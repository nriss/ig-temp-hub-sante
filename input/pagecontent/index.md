<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
This Implementation Guide defines the logical models for the Hub Santé interoperability platform (SAMU), based on the RS-EDA JSON schema. It provides a FHIR-based representation of emergency medical regulation cases exchanged between partners of the French emergency medical dispatch system.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : https://interop.esante.gouv.fr/ig/fhir/hubsante</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : https://interop.esante.gouv.fr/ig/fhir/hubsante
</p>
</blockquote>
</div>
{% endif %}


### Introduction

Le **Hub Santé** est une plateforme permettant un échange sécurisé de données de santé avec l'écosystème des SAMU. Elle sert à aiguiller les informations d'un SAMU vers un autre SAMU, ou d'un SAMU vers ses partenaires, en assurant les liens suivants :

* **15-18** — avec NexSIS (système national de gestion des alertes des SDIS) ;
* **15-17** — avec les systèmes nationaux de la Police et de la Gendarmerie ;
* **15-15** — avec le LRM d'un autre SAMU (quel que soit l'éditeur) ;
* **15-X** — avec tout autre logiciel partenaire du SAMU (hélicoptères, tablettes SMUR, SI-CAP, CNR 114…).

Cet Implementation Guide définit les **modèles logiques FHIR** correspondant au schéma JSON **RS-EDA** (Remontée de Situation — État Du dossier d'Affaire), qui est le format de message utilisé pour partager les dossiers de régulation médicale entre partenaires du Hub Santé.

### Objectifs

Le Hub Santé vise à :

* automatiser le partage et la synchronisation d'informations avec les acteurs de l'écosystème SAMU ;
* renforcer la coopération entre les acteurs des urgences ;
* gagner du temps et limiter la perte d'informations dans les échanges ;
* éviter la multiplicité des liens entre le LRM du SAMU et les autres logiciels ;
* définir un cadre d'interopérabilité et un référentiel commun aux éditeurs.

### Points forts du Hub Santé

* **Architecture nationale résiliente et sécurisée** garantissant la continuité des échanges en cas de panne ou de redémarrage d'un logiciel connecté ;
* **Maîtrise des données** : le SAMU reste maître de ses données et de leur partage ;
* **Standardisation nationale** du transfert d'information entre les SAMU et leurs partenaires ;
* **Intégrité des données** : pas de perte ni de modification de l'information pendant les échanges ;
* **Interopérabilité ouverte** : possibilité de connecter le LRM avec tout type de logiciel actuel ou futur ;
* **Suppression de la double saisie** des informations ;
* **Réduction des appels** et des temps d'attente ;
* **Synchronisation automatique** des données dans le LRM ;
* **Fédération des éditeurs** de SAMU autour d'un langage commun, permettant au SAMU de choisir librement sa solution tout en garantissant le dialogue avec des solutions différentes.

Pour plus d'informations sur le SI-SAMU : [esante.gouv.fr](https://esante.gouv.fr)

### Périmètre de cet IG

Cet IG couvre la modélisation logique du message **RS-EDA**, qui décrit un dossier de régulation médicale complet, incluant :

* La **qualification** du dossier (nature du problème, motif de santé, risques, priorité)
* La **localisation** de l'intervention (adresse, coordonnées GPS, accès)
* L'**alerte initiale** (appelant, canal de contact, notes)
* Le ou les **patients** pris en charge (identité, dossier administratif, hypothèses diagnostiques)
* Les **observations médicales** réalisées par les professionnels de santé
* Les **décisions** de régulation médicale (type, ressource mobilisée, destination)
* Les **informations complémentaires** libres

Les modèles logiques sont construits à partir du schéma JSON de référence publié par l'ANS :
[SAMU-Hub-Modeles / RS-EDA.schema.json](https://github.com/ansforge/SAMU-Hub-Modeles/blob/main/src/main/resources/json-schema/RS-EDA.schema.json)

### Auteurs et contributeurs

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@esante.gouv.fr |

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
