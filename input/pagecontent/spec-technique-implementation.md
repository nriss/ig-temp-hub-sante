<div style="background-color: #f0f0f0; border-left: 4px solid #666; padding: 10px; margin-bottom: 20px;">
  <b>Contenu technique</b> — Cette page s'adresse aux développeurs et intégrateurs souhaitant raccorder un logiciel au Hub Santé.
</div>

### Étapes d'implémentation

Liste indicative des étapes à réaliser pour raccorder un Client au Hub Santé :

1. **Se familiariser avec le client RabbitMQ** dans le langage utilisé — voir [https://www.rabbitmq.com/devtools.html](https://www.rabbitmq.com/devtools.html). Des tutoriels sont disponibles pour Python, Java, Ruby, PHP, C#, JavaScript, Go, Elixir, Objective-C, Swift et Spring AMQP.

2. **Demander les accès GitHub** et se familiariser avec la structure du repository (notamment le dossier `docs`) en transmettant les identifiants GitHub des personnes impliquées à [hubsante.contact@esante.gouv.fr](mailto:hubsante.contact@esante.gouv.fr).

3. **Faire des tests d'implémentation** en local ou en utilisant le certificat client partagé présent sur GitHub. Suivre de façon incrémentale les différentes versions du Hub Santé pour séquencer les développements.

4. **Intégrer le code des Consumer et Producer** :
   - **Java** : intégrer le code disponible sur le [GitHub partagé](https://github.com/ansforge/SAMU-Hub-Sante/tree/main/client/src/main/java/com/hubsante) en adaptant les `ConsumerRun` et `ProducerRun` selon les besoins
   - **Autres langages** : co-construire avec l'équipe Hub Santé les équivalents dans votre langage

5. **S'enregistrer auprès du Hub Santé** en transmettant une CSR pour obtenir un certificat signé par l'AC du Hub ainsi que la création de files dédiées.

Les développements côté éditeur consistent à :

1. S'appuyer sur un **client AMQP** correspondant au langage utilisé pour lire et écrire dans les files
2. S'appuyer sur les **schémas** (AsyncAPI ou XSD) pour valider les messages et faire le transcodage entre messages (JSON ou XML) et objets utilisés dans le code
3. Faire le **lien entre les objets et l'applicatif** (base de données, logique métier, …) — ce dernier point est spécifique à chaque éditeur

### Évolutions techniques envisagées

- **Monitoring et heartbeat** sur les services opérationnels : vérification des liens, notification aux acteurs lorsque certains liens ne sont plus fonctionnels
- **Matrice de distribution** selon les versions des référentiels et standards implémentés par chacun des clients
- **Transposition des messages** entre les versions supportées par les différents destinataires

### Annexe — Génération d'un certificat

Pour qu'un client d'un HubEx dispose d'un certificat pour s'authentifier, il doit générer une **requête de certification** composée de deux parties :
- Une **partie privée** (clé privée) : à conserver par le client, ne jamais transmettre
- Une **partie publique** (CSR — Certificate Signing Request) : à transmettre à l'équipe Hub Santé

Procédure :

1. Générer une clé privée et une CSR à l'aide du script [`certs/generate.sh`](https://github.com/ansforge/SAMU-Hub-Sante/blob/0.7/certs/generate.sh) du GitHub (génère également un certificat auto-signé pour les tests locaux)
2. Transmettre la CSR à l'équipe Hub Santé
3. L'équipe AC signe la CSR et transmet le certificat au client

> À terme, l'AC utilisée sera l'**IGC Santé** et les éditeurs devront générer directement leurs certificats via le portail des industriels de l'ANS ([industriels.esante.gouv.fr](https://industriels.esante.gouv.fr)).
