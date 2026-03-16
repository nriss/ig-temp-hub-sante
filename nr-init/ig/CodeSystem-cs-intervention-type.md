# Type d'intervention (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type d'intervention (Hub Santé)**

## CodeSystem: Type d'intervention (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-intervention-type | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSInterventionType |

 
Type d'intervention : primaire (première intervention urgente) ou secondaire (ex. TIH). 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSInterventionType](ValueSet-vs-intervention-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-intervention-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-intervention-type",
  "version" : "0.1.0",
  "name" : "CSInterventionType",
  "title" : "Type d'intervention (Hub Santé)",
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
  "description" : "Type d'intervention : primaire (première intervention urgente) ou secondaire (ex. TIH).",
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
    "code" : "T1",
    "display" : "T1 - Intervention primaire"
  },
  {
    "code" : "`T2-INTER`",
    "display" : "T2 - Intervention secondaire inter-établissements"
  },
  {
    "code" : "`T2-INTRA`",
    "display" : "T2 - Intervention secondaire intra-établissement"
  },
  {
    "code" : "T3",
    "display" : "T3"
  },
  {
    "code" : "T4",
    "display" : "T4"
  }]
}

```
