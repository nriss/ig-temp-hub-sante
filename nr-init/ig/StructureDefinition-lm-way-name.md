# Nom de voie - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nom de voie**

## Logical Model: Nom de voie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-way-name | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:WayNameLogical |

 
Nom complet d'une voie (rue, avenue, boulevard…). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Adresse détaillée](StructureDefinition-lm-detailed-address.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-way-name)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-way-name.csv), [Excel](StructureDefinition-lm-way-name.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-way-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-way-name",
  "version" : "0.1.0",
  "name" : "WayNameLogical",
  "title" : "Nom de voie",
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
  "description" : "Nom complet d'une voie (rue, avenue, boulevard…).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-way-name",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-way-name",
      "path" : "lm-way-name",
      "short" : "Nom de voie",
      "definition" : "Nom complet d'une voie (rue, avenue, boulevard…)."
    },
    {
      "id" : "lm-way-name.complete",
      "path" : "lm-way-name.complete",
      "short" : "Nom complet",
      "definition" : "Nom complet de la voie.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-way-name.type",
      "path" : "lm-way-name.type",
      "short" : "Type de voie",
      "definition" : "Type de voie (rue, avenue, boulevard…).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-way-name.name",
      "path" : "lm-way-name.name",
      "short" : "Nom",
      "definition" : "Nom propre de la voie (sans le type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
