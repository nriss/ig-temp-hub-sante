# Priorité du dossier (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Priorité du dossier (Hub Santé)**

## CodeSystem: Priorité du dossier (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-case-priority | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSCasePriority |

 
Niveau de priorité du dossier de régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSCasePriority](ValueSet-vs-case-priority.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-case-priority",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-case-priority",
  "version" : "0.1.0",
  "name" : "CSCasePriority",
  "title" : "Priorité du dossier (Hub Santé)",
  "status" : "draft",
  "date" : "2026-03-16T13:14:36+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Niveau de priorité du dossier de régulation médicale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "P0",
    "display" : "P0"
  },
  {
    "code" : "P1",
    "display" : "P1"
  },
  {
    "code" : "P2",
    "display" : "P2"
  },
  {
    "code" : "P3",
    "display" : "P3"
  },
  {
    "code" : "NR",
    "display" : "Non Renseigné"
  }]
}

```
