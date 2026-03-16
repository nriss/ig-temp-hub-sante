# Identifiant(s) patient(s) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identifiant(s) patient(s)**

## Logical Model: Identifiant(s) patient(s) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-id | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:ExternalIdLogical |

 
Identifiant patient provenant d'un système externe. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier administratif](StructureDefinition-lm-administrative-file.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-external-id)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-external-id.csv), [Excel](StructureDefinition-lm-external-id.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-external-id",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-id",
  "version" : "0.1.0",
  "name" : "ExternalIdLogical",
  "title" : "Identifiant(s) patient(s)",
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
  "description" : "Identifiant patient provenant d'un système externe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-id",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-external-id",
      "path" : "lm-external-id",
      "short" : "Identifiant(s) patient(s)",
      "definition" : "Identifiant patient provenant d'un système externe."
    },
    {
      "id" : "lm-external-id.source",
      "path" : "lm-external-id.source",
      "short" : "Source / type d'identifiant",
      "definition" : "Type de l'identifiant fourni.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-external-id-source|0.1.0"
      }
    },
    {
      "id" : "lm-external-id.value",
      "path" : "lm-external-id.value",
      "short" : "Identifiant",
      "definition" : "Valeur de l'identifiant.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
