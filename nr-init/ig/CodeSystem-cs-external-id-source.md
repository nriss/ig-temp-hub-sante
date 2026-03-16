# Source des identifiants externes patient (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Source des identifiants externes patient (Hub Santé)**

## CodeSystem: Source des identifiants externes patient (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-external-id-source | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSExternalIdSource |

 
Types d'identifiants externes utilisés pour identifier un patient. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSExternalIdSource](ValueSet-vs-external-id-source.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-external-id-source",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-external-id-source",
  "version" : "0.1.0",
  "name" : "CSExternalIdSource",
  "title" : "Source des identifiants externes patient (Hub Santé)",
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
  "description" : "Types d'identifiants externes utilisés pour identifier un patient.",
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
    "code" : "NIR",
    "display" : "NIR"
  },
  {
    "code" : "SINUS",
    "display" : "SINUS"
  },
  {
    "code" : "DOSSARD",
    "display" : "Dossard"
  },
  {
    "code" : "PLACE",
    "display" : "Place"
  },
  {
    "code" : "AUTRE",
    "display" : "Autre"
  }]
}

```
