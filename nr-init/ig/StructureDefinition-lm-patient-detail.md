# Informations patient - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informations patient**

## Logical Model: Informations patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient-detail | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_PatientDetail |

 
Informations cliniques et physiologiques du patient. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Patient](StructureDefinition-lm-patient.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-patient-detail)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-patient-detail.csv), [Excel](StructureDefinition-lm-patient-detail.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-patient-detail",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient-detail",
  "version" : "0.1.0",
  "name" : "LM_PatientDetail",
  "title" : "Informations patient",
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
  "description" : "Informations cliniques et physiologiques du patient.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient-detail",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-patient-detail",
      "path" : "lm-patient-detail",
      "short" : "Informations patient",
      "definition" : "Informations cliniques et physiologiques du patient."
    },
    {
      "id" : "lm-patient-detail.weight",
      "path" : "lm-patient-detail.weight",
      "short" : "Poids (kg)",
      "definition" : "Poids du patient en kilogrammes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "lm-patient-detail.height",
      "path" : "lm-patient-detail.height",
      "short" : "Taille (cm)",
      "definition" : "Taille du patient en centimètres.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "lm-patient-detail.age",
      "path" : "lm-patient-detail.age",
      "short" : "Âge",
      "definition" : "Âge du patient au format durée ISO 8601 (ex : P30Y, P6M, P2W). Une seule unité de durée utilisée (années, mois, semaines ou jours).",
      "comment" : "Regexp : ^P[0-9]{1,3}[YMWD]$",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-patient-detail.careLevel",
      "path" : "lm-patient-detail.careLevel",
      "short" : "Niveau de soin",
      "definition" : "Niveau de soins spécifique au patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-patient-care-level|0.1.0"
      }
    },
    {
      "id" : "lm-patient-detail.medicalHistory",
      "path" : "lm-patient-detail.medicalHistory",
      "short" : "Antécédents",
      "definition" : "Antécédents du patient (texte libre).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-patient-detail.treatment",
      "path" : "lm-patient-detail.treatment",
      "short" : "Traitements",
      "definition" : "Traitements du patient (texte libre).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
