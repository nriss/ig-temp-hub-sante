# Source des identifiants de localisation externes (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Source des identifiants de localisation externes (Hub Santé)**

## CodeSystem: Source des identifiants de localisation externes (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-external-location-id-source | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSExternalLocationIdSource |

 
Types d'identifiants utilisés pour référencer une localisation externe. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSExternalLocationIdSource](ValueSet-vs-external-location-id-source.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-external-location-id-source",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-external-location-id-source",
  "version" : "0.1.0",
  "name" : "CSExternalLocationIdSource",
  "title" : "Source des identifiants de localisation externes (Hub Santé)",
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
  "description" : "Types d'identifiants utilisés pour référencer une localisation externe.",
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
    "code" : "FINESS_ADMINISTRATIF",
    "display" : "FINESS Administratif"
  },
  {
    "code" : "FINESS_GEOGRAPHIQUE",
    "display" : "FINESS Géographique"
  },
  {
    "code" : "SIREN",
    "display" : "SIREN"
  },
  {
    "code" : "SIRET",
    "display" : "SIRET"
  },
  {
    "code" : "APE_NAF",
    "display" : "APE / NAF"
  }]
}

```
