# Type d'information externe (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type d'information externe (Hub Santé)**

## CodeSystem: Type d'information externe (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-external-info-type | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSExternalInfoType |

 
Type de la ressource externe référencée pour la localisation. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSExternalInfoType](ValueSet-vs-external-info-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-external-info-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-external-info-type",
  "version" : "0.1.0",
  "name" : "CSExternalInfoType",
  "title" : "Type d'information externe (Hub Santé)",
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
  "description" : "Type de la ressource externe référencée pour la localisation.",
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
    "code" : "MANUEL",
    "display" : "Manuel"
  },
  {
    "code" : "CARTE",
    "display" : "Carte"
  },
  {
    "code" : "AUTRE",
    "display" : "Autre"
  },
  {
    "code" : "PHOTO",
    "display" : "Photo"
  },
  {
    "code" : "SITE_INTERNET",
    "display" : "Site Internet"
  }]
}

```
