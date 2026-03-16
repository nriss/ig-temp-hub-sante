# Interfaçage - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Introduction**](spec-technique-intro.md)
* **Interfaçage**

## Interfaçage

**Contenu technique**— Cette page s'adresse aux développeurs et intégrateurs souhaitant raccorder un logiciel au Hub Santé.

### Connexion

La connexion utilise le protocole **AMQP 0-9-1**. Chaque client se connecte au Hub Santé via un accès sécurisé par certificat, remplaçant l'usage d'un couple identifiant/mot de passe. L'URI complète de connexion est de la forme :

```
amqps://messaging.hub.esante.gouv.fr:5671[/vhost]

```

Le Hub Santé utilise le concept de **Virtual Hosts** pour gérer les différentes versions des spécifications techniques.

Pour activer les échanges en TLS, le Client doit configurer son connecteur pour :

* Utiliser **TLS 1.2**
* Activer la **Peer Verification** (truststore permettant de valider le certificat du serveur)
* Activer la **Server Hostname Verification** (correspondance entre le domaine et le certificat présenté)
* Spécifier le mécanisme d'authentification **`EXTERNAL`** pour utiliser les certificats à la place d'un identifiant/mot de passe

Le Client est autorisé à :

* **Lire** les messages publiés uniquement sur ses 3 files d'écoute (`{identifiantClient}.message`, `{identifiantClient}.ack`, `{identifiantClient}.info`)
* **Publier** un message sur l'échangeur d'envoi en fournissant son identifiant client comme clé de routage

Le Client ne dispose d'**aucune permission de configuration** (création de files ou d'échangeurs). Il doit se connecter aux files en **mode passif**.

Exemples d'implémentation disponibles sur le GitHub :

* [Consumer/Producer Java](https://github.com/ansforge/SAMU-Hub-Sante/blob/0.7/client/src/main/java/com/hubsante) — connexion TLS + authentification EXTERNAL

### Entrée et sortie des messages

Les files de messages sont déclarées comme **persistantes** (métadonnées stockées sur disque) pour garantir la reprise d'activité en cas de problème sur le Hub Santé.

Tous les messages publiés sur les HubEx **doivent être envoyés en mode persistant** (delivery mode = persistent). Un message non persistant ne sera pas récupéré si le système est relancé et entraînera un message d'erreur.

Exemples d'implémentation :

* Java : [Producer.java](https://github.com/ansforge/SAMU-Hub-Sante/blob/0.7/client/src/main/java/com/hubsante/Producer.java#L79)
* Spring Boot : les messages sont envoyés en mode persistant par défaut

### Flot des messages et acquittements

Un message publié par un Client est inscrit dans une enveloppe EDXL-DE, puis publié sur l'échangeur `hubsante` du Hub Santé avec l'identifiant client comme clé de routage. Le Hub Santé route le message vers la file `{identifiantDestinataire}.message` du destinataire, qui le consomme depuis sa file.

Trois niveaux d'acquittement sont définis :

#### Acquittement technique (Consumer Acknowledgement)

Les HubEx **conservent un message dans leurs files et tentent de le renvoyer jusqu'à réception d'une confirmation de prise en charge**. Une fois qu'un consommateur a bien récupéré et enregistré un message dans son système, la responsabilité du message lui incombe — il informe l'intermédiaire précédent que le message est bien passé pour que celui-ci le supprime de sa file.

Cette fonctionnalité est intégrée au protocole AMQP 0-9-1 sous la forme de **Consumer Acknowledgement**. Ces acquittements doivent être intégrés à la fin du code de traitement d'un message.

> **Attention** : En cas d'oubli de l'acquittement, les messages resteraient dans la file et RabbitMQ tenterait de les renvoyer, entraînant duplications, blocages et problèmes de mémoire.

Exemples d'implémentation :

* Java : [ConsumerRun.java](https://github.com/ansforge/SAMU-Hub-Sante/blob/0.7/client/src/main/java/com/hubsante/ConsumerRun.java)
* Spring Boot : les messages sont acquittés automatiquement à la suite de la bonne exécution du Listener

#### Acquittement de réception finale (Message Ack)

La validation auprès de l'émetteur n'est pas nativement intégrée dans AMQP 0-9-1. Un deuxième type de file `{identifiantClient}.ack` permet de remonter les **accusés de réception finale**.

Une fois le message intégré dans son système, le Client destinataire peut en informer le Client émetteur en lui envoyant un acquittement de réception finale. Le cheminement est similaire au message original, pris en sens inverse.

**Du point de vue fonctionnel** : tant que l'acquittement de réception finale n'est pas reçu, le Client émetteur doit considérer que le message n'a pas été délivré et en informer ses utilisateurs. Le format des acquittements est défini dans la section [Format des messages](spec-technique-messages.md) (RC-REF).

#### Informer du traitement — message fonctionnel

L'acquittement de réception finale n'informe que de la **réception** du message et ne donne aucune information sur le traitement et les actions réalisés. Pour communiquer les résultats du traitement, de nouveaux **messages fonctionnels** doivent être utilisés.

#### Gestion des erreurs

Une file `{identifiantClient}.info` est mise en place pour remonter des informations et des erreurs aux émetteurs et destinataires. Un message d'erreur peut être envoyé dans les cas suivants :

* `Content-Type` non conforme dans les propriétés du message AMQP
* Incohérence entre la clé de routage utilisée à la publication et le champ `SenderID` dans l'enveloppe EDXL-DE
* Non-conformité du message aux modèles de données des DSF
* Expiration du message avant dépilement par le destinataire
* Rejet du message par le SI destinataire lors de son dépilement

Le format des messages d'erreur est défini dans la section [Format des messages](spec-technique-messages.md).

