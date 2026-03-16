# Format des messages - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Introduction**](spec-technique-intro.md)
* **Format des messages**

## Format des messages

**Contenu technique**— Cette page s'adresse aux développeurs et intégrateurs souhaitant raccorder un logiciel au Hub Santé.

### Format des messages : JSON et XML

Par défaut, les messages échangés sont en **JSON**. Pour certains cas d'usage (notamment le lien 15-NexSIS basé sur les travaux CISU), les messages peuvent également être en **XML**. Le Hub Santé assure la conversion entre les deux formats — les Clients peuvent ainsi ne s'occuper que du format de leur convenance.

Il est nécessaire de définir le **`Content-Type`** dans les propriétés du message AMQP. Deux valeurs sont acceptables :

* `application/json`
* `application/xml`

Toute autre valeur, ou l'absence de `Content-Type`, entraîne un échec de transmission et l'envoi d'un message d'erreur sur la file `info` de l'émetteur.

### Identifiants et logique de routage

La logique de nommage est basée sur des **domaines imbriqués**. L'identifiant d'un SAMU a la forme `fr.health.samuXXX` indiquant :

* Un acteur français
* Du domaine de la Santé
* Correspondant au SAMU du département XXX (code CRRA, ex : `FR680` pour Mulhouse, `FR2A0` pour Ajaccio, `FR641` pour Bayonne)

Ces identifiants permettent aux différents HubEx de router les messages en interne ou vers le Hub adapté.

### Enveloppe EDXL-DE

Chaque message transitant par le réseau de HubEx est composé de :

* Une **enveloppe EDXL-DE** contenant les informations de routage (seule partie exploitée par les HubEx)
* Un **corps de message** contenant les informations fonctionnelles à transmettre au Client destinataire

Le format par défaut est JSON. Pour les cas 15-NexSIS, l'enveloppe peut aussi être en XML avec les mêmes règles. En JSON, les champs `contentXML` et `embeddedXMLContent` sont renommés respectivement `JsonContent` et `embeddedJsonContent`.

#### Structure edxlDistribution

| | | | |
| :--- | :--- | :--- | :--- |
| `distributionID` | Identifiant unique du message attribué par l'expéditeur | [1..1] | `{senderId}_{internalId}`— ex :`fr.health.samuXXX_ID12345` |
| `senderID` | Identifiant de l'émetteur | [1..1] | ex :`fr.health.samuXXX` |
| `dateTimeSent` | Date et heure d'envoi | [1..1] | Horodatage avec décalage horaire — ex :`2022-06-21T23:59:00+02:00` |
| `dateTimeExpires` | Date et heure d'expiration du message | [1..1] | Horodatage avec décalage horaire |
| `distributionStatus` | Statut du message | [1..1] | `Actual`,`Exercise` |
| `distributionKind` | Type de message — détermine la file de destination | [1..1] | `Report`/`Update`/`Cancel`→ file`.message`;`Ack`→ file`.ack`;`Error`→ file`.info` |
| `descriptor` | Sous-éléments liés au message | [1..1] | Voir tableau`descriptor` |
| `content` | Contenu du message | [1..1] | Voir tableau`content` |

#### Structure descriptor

| | | | |
| :--- | :--- | :--- | :--- |
| `language` | Langage du message | [1..1] | Étiquette IETF — ex :`fr-FR` |
| `explicitAddress` | Identifiants de l'expéditeur et du destinataire | [1..1] | Voir tableau`explicitAddress` |
| Autres champs | Non utilisés | — | — |

#### Structure content / contentObject

| | | | |
| :--- | :--- | :--- | :--- |
| `contentObject` | Contenu du message | [1..*] | — |
| `contentXML`/`JsonContent` | Contenu du message XML ou JSON, dans un unique élément enfant`embeddedXMLContent`/`embeddedJsonContent` | [1..1] | Contenu XML ou JSON |

### Adressage destinataire

Le Hub Santé n'autorise que des **messages point à point** : un seul destinataire par enveloppe EDXL-DE. Si le même message doit être envoyé à plusieurs destinataires, il doit être dupliqué autant de fois que nécessaire.

#### Structure explicitAddress

| | | | |
| :--- | :--- | :--- | :--- |
| `explicitAddressScheme` | Identifiant du SI pilotant le Hub Santé | [1..1] | Valeur fixe :`hubex` |
| `explicitAddressValue` | Identifiant du destinataire | [1..1] | ex :`fr.health.samuXXX` |

### En-tête RC-DE

Les messages CISU (notamment les échanges 15-NexSIS) utilisent un **en-tête RC-DE** (Référentiel CISU – Distribution Element) contenant des champs communs à tous les types de messages CISU. Les messages CISU peuvent être compris comme des extensions du RC-DE — par exemple, le message RS-EDA correspond à un RC-DE étendu par l'élément `CreateCaseEvent`.

#### Structure RC-DE

| | | | |
| :--- | :--- | :--- | :--- |
| `messageId` | Identifiant du message — identique au`distributionID`de l'enveloppe EDXL-DE | [1..1] | Chaîne de caractères |
| `sender` | Émetteur | [1..1] | `AddresseeType` |
| `sentAt` | Date et heure d'envoi | [1..1] | Horodatage avec décalage horaire |
| `status` | Statut du message | [1..1] | `Actual`,`Exercise` |
| `kind` | Type de message | [1..1] | `Report`,`Update`,`Cancel`,`Ack`,`Error` |
| `recipients` | Liste des destinataires | [1..1] | Liste de 1..n`recipient` |

#### Structure AddresseeType

| | | | |
| :--- | :--- | :--- | :--- |
| `name` | Identifiant de l'acteur | [1..1] | ex :`fr.health.samuXXX` |
| `URI` | URI de l'acteur | [1..1] | `hubex:{name}`— ex :`hubex:fr.health.samuXXX` |

> **Note sur `recipients`** : bien qu'il n'existe qu'un destinataire par enveloppe EDXL-DE, ce champ permet de lister l'ensemble des destinataires ayant reçu un message au contenu similaire — l'équivalent d'un champ « Copie » dans un courrier postal.

### Message de référence et acquittements de réception finale

Le **message de référence RC-REF** permet de faire référence à un message précédemment partagé. Il reprend la `distributionID` du message concerné ainsi que l'ensemble des paramètres du RC-DE.

Les acquittements de réception finale sont des messages RC-REF avec :

* `EDXL-DE.distributionKind` = `Ack`
* `RC-DE.kind` = `Ack`
* `reference.distributionID` = `distributionID` du message acquitté

#### Structure RC-REF

| | | | |
| :--- | :--- | :--- | :--- |
| Ensemble des paramètres RC-DE | Voir tableau RC-DE ci-dessus | — | — |
| `reference.distributionID` | Identifiant unique du message référencé | [1..1] | Identique au`distributionID`de l'enveloppe EDXL-DE du message acquitté |

### Format des messages d'erreur

Les messages d'erreur sont envoyés par le Hub Santé sur les files `.info` des acteurs. Ils sont insérés dans des enveloppes EDXL-DE comme l'ensemble des messages transitant par le réseau.

#### Structure d'un message d'erreur

| | | | |
| :--- | :--- | :--- | :--- |
| `errorCode` | Code de l'erreur | [1..1] | Voir tableau des codes d'erreur |
| `errorCause` | Cause de l'erreur (avec`distributionID`si le message a pu être désérialisé) | [1..1] | Chaîne de caractères |
| `sourceMessage` | Message rejeté | [1..1] | Chaîne de caractères |

#### Codes d'erreur

| | | |
| :--- | :--- | :--- |
| 100 | `DELIVERY_MODE_INCONSISTENCY` | Le message a été rejeté car il n'a pas été publié en mode persistant |
| 101 | `NOT_ALLOWED_CONTENT_TYPE` | Le message a été rejeté car l'un des deux Content-Type autorisés n'a pas été spécifié |
| 102 | `UNRECOGNIZED_MESSAGE_FORMAT` | Le message n'a pas pu être désérialisé |
| 200 | `SENDER_INCONSISTENCY` | Le champ`senderID`de l'enveloppe EDXL ne correspond pas à la clé de routage utilisée pour la publication |
| 300 | `INVALID_MESSAGE` | Le message n'est pas conforme aux spécifications techniques (JSON Schema ou XSD) |
| 400 | `EXPIRED_MESSAGE_BEFORE_ROUTING` | Le message a expiré sur le Hub avant d'être délivré au destinataire |
| 500 | `DEAD_LETTERED_QUEUE` | Le message a expiré avant que le destinataire ne le dépile |

### Message personnalisé (CustomContent)

Pour faciliter les travaux d'intégration, un message personnalisé est disponible **uniquement sur l'environnement bac à sable** du Hub Santé. Ce message permet de **désactiver la validation** du contenu par rapport aux spécifications fonctionnelles.

L'élément `customContent` (dans `embeddedJsonContent` ou `embeddedXMLContent`) peut contenir autant d'éléments que souhaité, sans contrainte de format.

### Schémas et exemples de messages

Les schémas (AsyncAPI et XSD) ainsi que des exemples de messages (JSON et XML) sont fournis dans le dossier `docs/DST` du GitHub : [https://github.com/ansforge/SAMU-Hub-Sante](https://github.com/ansforge/SAMU-Hub-Sante)

