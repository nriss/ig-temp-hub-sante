# Communication avec l'appelant (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication avec l'appelant (Hub Santé)**

## CodeSystem: Communication avec l'appelant (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-caller-communication | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSCallerCommunication |

 
Qualité ou contrainte de communication avec l'appelant. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSCallerCommunication](ValueSet-vs-caller-communication.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-caller-communication",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-caller-communication",
  "version" : "0.1.0",
  "name" : "CSCallerCommunication",
  "title" : "Communication avec l'appelant (Hub Santé)",
  "status" : "draft",
  "date" : "2026-03-16T13:47:35+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Qualité ou contrainte de communication avec l'appelant.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "AUCUNE",
    "display" : "Aucune contrainte"
  },
  {
    "code" : "MUET",
    "display" : "Muet"
  },
  {
    "code" : "VISION",
    "display" : "Problème de vision"
  },
  {
    "code" : "LANGUE",
    "display" : "Barrière de la langue"
  },
  {
    "code" : "PANIQUE",
    "display" : "Panique"
  },
  {
    "code" : "HOSTILE",
    "display" : "Hostile"
  },
  {
    "code" : "AGITE",
    "display" : "Agité"
  },
  {
    "code" : "AUTRE",
    "display" : "Autre"
  },
  {
    "code" : "IMPOSS",
    "display" : "Communication impossible"
  }]
}

```
