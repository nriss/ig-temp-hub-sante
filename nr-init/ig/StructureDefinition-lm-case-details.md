# Détails du dossier - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Détails du dossier**

## Logical Model: Détails du dossier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-case-details | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CaseDetailsLogical |

 
Informations complémentaires de qualification du dossier de régulation médicale. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Qualification du dossier](StructureDefinition-lm-qualification.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-case-details)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-case-details.csv), [Excel](StructureDefinition-lm-case-details.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-case-details",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-case-details",
  "version" : "0.1.0",
  "name" : "CaseDetailsLogical",
  "title" : "Détails du dossier",
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
  "description" : "Informations complémentaires de qualification du dossier de régulation médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-case-details",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-case-details",
      "path" : "lm-case-details",
      "short" : "Détails du dossier",
      "definition" : "Informations complémentaires de qualification du dossier de régulation médicale."
    },
    {
      "id" : "lm-case-details.status",
      "path" : "lm-case-details.status",
      "short" : "Statut",
      "definition" : "Statut du dossier.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-case-status|0.1.0"
      }
    },
    {
      "id" : "lm-case-details.attribution",
      "path" : "lm-case-details.attribution",
      "short" : "Attribution",
      "definition" : "Attribution ou orientation du dossier.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-case-attribution|0.1.0"
      }
    },
    {
      "id" : "lm-case-details.priority",
      "path" : "lm-case-details.priority",
      "short" : "Priorité",
      "definition" : "Niveau de priorité du dossier.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-case-priority|0.1.0"
      }
    },
    {
      "id" : "lm-case-details.careLevel",
      "path" : "lm-case-details.careLevel",
      "short" : "Niveau de soin",
      "definition" : "Niveau de soins global du dossier.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-patient-care-level|0.1.0"
      }
    }]
  }
}

```
