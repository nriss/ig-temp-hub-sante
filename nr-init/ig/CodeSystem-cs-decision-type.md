# Type de décision médicale (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de décision médicale (Hub Santé)**

## CodeSystem: Type de décision médicale (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-decision-type | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CS_DecisionType |

 
Type de décision prise dans le cadre de la régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VS_DecisionType](ValueSet-vs-decision-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-decision-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-decision-type",
  "version" : "0.1.0",
  "name" : "CS_DecisionType",
  "title" : "Type de décision médicale (Hub Santé)",
  "status" : "draft",
  "date" : "2026-03-16T12:48:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de décision prise dans le cadre de la régulation médicale.",
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
    "code" : "CONSEIL",
    "display" : "Conseil"
  },
  {
    "code" : "PMT",
    "display" : "Prescription Médicale de Transport"
  },
  {
    "code" : "INTER",
    "display" : "Intervention"
  },
  {
    "code" : "ORIENT",
    "display" : "Orientation"
  },
  {
    "code" : "PASPLUS",
    "display" : "Pas plus"
  }]
}

```
