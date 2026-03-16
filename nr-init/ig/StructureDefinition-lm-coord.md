# Coordonnées géographiques - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coordonnées géographiques**

## Logical Model: Coordonnées géographiques 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-coord | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CoordLogical |

 
Coordonnées géographiques d'un point (latitude, longitude, altitude, précision). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Point géographique](StructureDefinition-lm-point.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-coord)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-coord.csv), [Excel](StructureDefinition-lm-coord.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-coord",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-coord",
  "version" : "0.1.0",
  "name" : "CoordLogical",
  "title" : "Coordonnées géographiques",
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
  "description" : "Coordonnées géographiques d'un point (latitude, longitude, altitude, précision).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-coord",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-coord",
      "path" : "lm-coord",
      "short" : "Coordonnées géographiques",
      "definition" : "Coordonnées géographiques d'un point (latitude, longitude, altitude, précision)."
    },
    {
      "id" : "lm-coord.lat",
      "path" : "lm-coord.lat",
      "short" : "Latitude",
      "definition" : "Latitude en degrés décimaux (WGS84).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "lm-coord.lon",
      "path" : "lm-coord.lon",
      "short" : "Longitude",
      "definition" : "Longitude en degrés décimaux (WGS84).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "lm-coord.precision",
      "path" : "lm-coord.precision",
      "short" : "Précision",
      "definition" : "Niveau de précision des coordonnées.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-coord-precision|0.1.0"
      }
    },
    {
      "id" : "lm-coord.height",
      "path" : "lm-coord.height",
      "short" : "Altitude",
      "definition" : "Altitude en mètres.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    }]
  }
}

```
