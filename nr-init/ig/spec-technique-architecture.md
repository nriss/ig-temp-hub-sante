# Architecture et sécurité - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Introduction**](spec-technique-intro.md)
* **Architecture et sécurité**

## Architecture et sécurité

**Contenu technique**— Cette page s'adresse aux développeurs et intégrateurs souhaitant raccorder un logiciel au Hub Santé.

### Maillage de HubEx

Les échanges entre les acteurs de l'urgence sont portés par des Hubs d'échanges (aussi appelés « HubEx ») métiers — un par force — interconnectés en un maillage. Les acteurs sont connectés à leur HubEx métier et peuvent échanger des messages avec n'importe quel autre acteur par l'intermédiaire de leur HubEx. Les HubEx métiers considérés dans les travaux CISU sont portés par :

* L'Agence du Numérique de Santé (ANS)
* L'Agence du Numérique de la Sécurité Civile (ANSC)
* La Gendarmerie Nationale (GN)
* La Police Nationale (PN)
* La Préfecture de Police de Paris (PP)

### Articulation avec les DSF

Les présentes spécifications détaillent le fonctionnement du Hub Santé ainsi que le raccordement au Hub Santé pour des clients Santé. Ce raccordement est le prérequis technique à l'implémentation d'échanges fonctionnels décrits dans des Dossiers de Spécifications Fonctionnelles (DSF) complémentaires portant notamment sur les échanges 15-NexSIS (entre un LRM Santé et NexSIS) et les échanges 15-15 (entre deux LRM Santé ou autres Clients Santé).

### Orientations techniques

**Messages asynchrones, AMQP et RabbitMQ**

Les échanges entre HubEx ou entre un acteur et son HubEx se font via des opérations d'envoi et/ou de réception de messages en mode asynchrone selon une architecture MOM. La solution technique proposée est basée sur le protocole **AMQP 0-9-1** et son implémentation open-source **RabbitMQ**.

**Communications point à point et files de messages**

Le mode de communication est basé sur un échange point à point (PTP) via des files de messages. Un client peut publier un message vers un unique destinataire. Chaque client dispose de **3 files d'écoute** selon la typologie des messages reçus :

* `{identifiantClient}.message` — échanges fonctionnels
* `{identifiantClient}.ack` — acquittements de réception finale
* `{identifiantClient}.info` — messages généraux d'informations, alertes et erreurs

Exemples : `fr.health.samu001.message`, `fr.health.samu002.ack`

### Sécurisation des échanges

#### Protocoles

Le HubEx Santé est accessible directement depuis Internet à l'adresse `messaging.hub.esante.gouv.fr`.

Le protocole **AMQPS** (AMQP sécurisé par TLS) est utilisé pour sécuriser les services dans les deux sens. Il permet d'assurer la confidentialité et l'authenticité des échanges. Le canal AMQPS est établi avec une **authentification mutuelle par certificats (mTLS)**. La connexion doit être établie avec **TLS 1.2**.

À l'établissement de la session TLS :

* Le Hub Santé et le Client présentent un certificat X509 SERV_SSL issu de l'IGC Santé
* Le Client s'assure que le certificat serveur présenté est bien celui du Hub Santé
* Le Hub Santé s'assure que le certificat présenté par le Client fait partie des certificats autorisés

L'authentification s'appuie sur le **Common Name (CN)** du certificat client, qui doit correspondre à l'identifiant client.

#### Obtention des certificats

**Certificats temporaires (phase de démarrage)**

Pour faciliter les premiers raccordements, les éditeurs peuvent transmettre une CSR à l'équipe Hub Santé qui leur retourne un certificat signé par l'AC du Hub Santé. Le script `certs/generate.sh` du GitHub permet de générer une clé privée, une CSR et un certificat auto-signé.

**Certificats IGC Santé (production)**

Le portail des industriels de l'ANS ([industriels.esante.gouv.fr](https://industriels.esante.gouv.fr)) est le point d'entrée pour la commande de certificats IGC Santé :

* Tests : formulaire F414
* Production : formulaire F413

#### Traçabilité

La traçabilité des échanges doit être assurée à la fois par le Hub Santé et par le Client :

* Au niveau de l'échange (réception et émission du message) pour les deux systèmes
* Au niveau du résultat du traitement du message (système recevant le message uniquement)

Chaque trace doit être **horodatée** et le serveur du Client doit être synchronisé sur une source de temps fiable (NTP). Les traces doivent être accessibles en cas de requête spécifique et conservées conformément à la réglementation.

#### Persistance des messages

Chaque message transitant par le Hub Santé est sauvegardé par le cluster RabbitMQ. Le **Time-To-Live général** est de **24 heures**. Lors de la transmission, le Hub Santé renseigne un TTL par message basé sur le champ `dateTimeExpires` de l'enveloppe EDXL-DE.

Si le message expire avant d'être délivré (avant ou après le routage), le Hub Santé envoie un message d'erreur à l'expéditeur pour l'en informer.

#### Ouvertures d'accès réseau

En fonction de la situation du Client, il peut être nécessaire de demander l'ouverture de l'URL de RabbitMQ aux équipes informatiques de l'établissement :

* URL RabbitMQ : `amqps://messaging.hub.esante.gouv.fr:5671`

### Autorisations

L'ajout d'un client sur le Hub Santé nécessite :

1. La prise de contact auprès de l'ANS (hubsante.contact@esante.gouv.fr)
1. La production et transmission d'un certificat validé auprès de l'AC du Hub Santé
1. L'intégration de ces informations dans le Hub Santé

Les acteurs ont le droit d'échanger uniquement avec les acteurs enregistrés par les différents HubEx. Les échanges autorisés sont définis par les DSF et contrôlés par les HubEx lors des échanges de messages.

