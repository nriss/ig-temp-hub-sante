# Précision des coordonnées géographiques (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Précision des coordonnées géographiques (Hub Santé)**

## CodeSystem: Précision des coordonnées géographiques (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-coord-precision | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CS_CoordPrecision |

 
Niveau de précision des coordonnées géographiques d'un point. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VS_CoordPrecision](ValueSet-vs-coord-precision.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-coord-precision",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-coord-precision",
  "version" : "0.1.0",
  "name" : "CS_CoordPrecision",
  "title" : "Précision des coordonnées géographiques (Hub Santé)",
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
  "description" : "Niveau de précision des coordonnées géographiques d'un point.",
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
    "code" : "VILLE",
    "display" : "Ville"
  },
  {
    "code" : "RUE",
    "display" : "Rue"
  },
  {
    "code" : "ADRESSE",
    "display" : "Adresse"
  },
  {
    "code" : "EXACTE",
    "display" : "Exacte"
  },
  {
    "code" : "INCONNUE",
    "display" : "Inconnue"
  }]
}

```
