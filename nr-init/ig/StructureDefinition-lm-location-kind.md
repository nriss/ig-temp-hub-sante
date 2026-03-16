# Type de lieu - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de lieu**

## Logical Model: Type de lieu 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location-kind | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LocationKindLogical |

 
Code et libellé décrivant le type de lieu de l'intervention (nomenclature SAMU). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Qualification du dossier](StructureDefinition-lm-qualification.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-location-kind)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-location-kind.csv), [Excel](StructureDefinition-lm-location-kind.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-location-kind",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location-kind",
  "version" : "0.1.0",
  "name" : "LocationKindLogical",
  "title" : "Type de lieu",
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
  "description" : "Code et libellé décrivant le type de lieu de l'intervention (nomenclature SAMU).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location-kind",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-location-kind",
      "path" : "lm-location-kind",
      "short" : "Type de lieu",
      "definition" : "Code et libellé décrivant le type de lieu de l'intervention (nomenclature SAMU)."
    },
    {
      "id" : "lm-location-kind.code",
      "path" : "lm-location-kind.code",
      "short" : "Code",
      "definition" : "Code de la nomenclature associée.",
      "comment" : "Regexp : ^L\\d{2}(\\.\\d{2}){2}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-location-kind.label",
      "path" : "lm-location-kind.label",
      "short" : "Libellé",
      "definition" : "Libellé de la nomenclature associée.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
