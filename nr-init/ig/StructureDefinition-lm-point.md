# Point géographique - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Point géographique**

## Logical Model: Point géographique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-point | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:PointLogical |

 
Point géographique avec ses coordonnées et une indication sur la provenance AML. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Géométrie](StructureDefinition-lm-geometry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-point)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-point.csv), [Excel](StructureDefinition-lm-point.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-point",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-point",
  "version" : "0.1.0",
  "name" : "PointLogical",
  "title" : "Point géographique",
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
  "description" : "Point géographique avec ses coordonnées et une indication sur la provenance AML.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-point",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-point",
      "path" : "lm-point",
      "short" : "Point géographique",
      "definition" : "Point géographique avec ses coordonnées et une indication sur la provenance AML."
    },
    {
      "id" : "lm-point.coord",
      "path" : "lm-point.coord",
      "short" : "Coordonnées",
      "definition" : "Coordonnées géographiques du point.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-coord"
      }]
    },
    {
      "id" : "lm-point.isAml",
      "path" : "lm-point.isAml",
      "short" : "Est AML",
      "definition" : "Indique si les coordonnées proviennent de l'Advanced Mobile Location (AML).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
