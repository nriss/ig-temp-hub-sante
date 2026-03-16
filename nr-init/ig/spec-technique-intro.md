# Introduction - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* **Introduction**

## Introduction

**Contenu technique**— Cette page s'adresse aux développeurs et intégrateurs souhaitant raccorder un logiciel au Hub Santé.

### Objet du document

Ce document décrit les principes et les spécifications techniques permettant de connecter et de gérer les échanges entre le Hub Santé de l'ANS et les logiciels d'éditeurs (appelés « Clients ») : LRM (Logiciels de Régulation Médicale), logiciels de gestion des hélicoptères, logiciels de tablettes, etc.

### Contexte

Dans un cadre d'interopérabilité des services d'urgences aussi bien Santé qu'inter-forces, l'ANS a construit une solution d'échanges de messages appelée « Hub Santé » et la connecte avec les logiciels des éditeurs Santé.

### Approche itérative

Les travaux et spécifications pour mettre en œuvre le Hub Santé et les connecteurs associés sont réalisés selon une approche itérative et agile. La démarche est constituée de petites étapes consécutives permettant de délivrer rapidement des fonctionnalités, valider progressivement les travaux réalisés et de s'adapter aux retours et aux contraintes d'implémentation.

Les versions successives réalisées sont les suivantes :

| | |
| :--- | :--- |
| v0.1 | Messages vides et acquittements techniques |
| v0.2 | + Accusés de réception finale |
| v0.3 | + Sécurisation par certificats et mTLS |
| v0.4 | + Transcodage et spécifications AsyncAPI |
| v0.5 | + Hub en Spring Boot et messages CISU |
| v0.6 | + Transcodage et validation, authentification par certificat |
| v0.7 | + Migration Cloud et gestion JSON/XML |
| v0.8 | + Web (landing & JSV), stabilisation et tests |

Les présentes spécifications ne sont pas finales et sont amenées à évoluer en étant corrigées, précisées et étendues pour couvrir plus de fonctionnalités et de cas d'usage à mesure que les travaux avancent.

### Repository GitHub partagé

Afin de partager les travaux et les développements réalisés, un repository de code a été créé sur le GitHub de l'ANS : [https://github.com/ansforge/SAMU-Hub-Sante](https://github.com/ansforge/SAMU-Hub-Sante).

Le GitHub sert de centralisation pour :

* Le moyen de lancer localement et rapidement un RabbitMQ minimal
* Les tutoriels Java de RabbitMQ
* Les spécifications techniques de connexion (différentes versions du DST) et de format des messages (AsyncAPI, XSD, …)
* L'implémentation Java du Hub Santé et le moyen d'en lancer une instanciation locale
* Des modèles de code d'un consommateur et d'un producteur Java implémentant les différentes versions

Le GitHub est pour le moment privé. Pour obtenir les accès, transmettez les identifiants GitHub des personnes impliquées à l'adresse : [hubsante.contact@esante.gouv.fr](mailto:hubsante.contact@esante.gouv.fr)

### Lexique

| | |
| :--- | :--- |
| AC | Autorité de Certification |
| AMQP | Advanced Message Queuing Protocol |
| CISU | Cadre d'Interopérabilité des Services d'Urgence |
| CSR | Certificate Signing Request |
| DSF | Dossier des Spécifications Fonctionnelles : document spécifiant les cas d'usage couverts ainsi que les modèles de données et cinématiques associés |
| DST | Dossier des Spécifications Techniques : document spécifiant le fonctionnement du Hub Santé et les caractéristiques techniques du raccordement |
| EDXL | Emergency Data Exchange Language |
| HubEx | Plate-forme d'échanges — Hub d'échanges |
| MOM | Middleware Orienté Messages |
| PTP | Point To Point |
| XSD | XML Schema Definition |

