# Information externe - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Information externe**

## Logical Model: Information externe 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-info | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:ExternalInfoLogical |

 
Référence vers une ressource externe apportant des informations complémentaires sur la localisation. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Localisation](StructureDefinition-lm-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-external-info)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-external-info.csv), [Excel](StructureDefinition-lm-external-info.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-external-info",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-info",
  "version" : "0.1.0",
  "name" : "ExternalInfoLogical",
  "title" : "Information externe",
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
  "description" : "Référence vers une ressource externe apportant des informations complémentaires sur la localisation.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-info",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-external-info",
      "path" : "lm-external-info",
      "short" : "Information externe",
      "definition" : "Référence vers une ressource externe apportant des informations complémentaires sur la localisation."
    },
    {
      "id" : "lm-external-info.uri",
      "path" : "lm-external-info.uri",
      "short" : "URI",
      "definition" : "URI de la ressource externe.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "lm-external-info.type",
      "path" : "lm-external-info.type",
      "short" : "Type",
      "definition" : "Type de la ressource externe.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-external-info-type|0.1.0"
      }
    },
    {
      "id" : "lm-external-info.freetext",
      "path" : "lm-external-info.freetext",
      "short" : "Texte libre",
      "definition" : "Description libre de la ressource externe.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
