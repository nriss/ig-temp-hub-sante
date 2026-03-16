# Observation médicale - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation médicale**

## Logical Model: Observation médicale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-medical-note | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:MedicalNoteLogical |

 
Observation médicale réalisée par un professionnel de santé dans le contexte de la régulation médicale (RS-EDA). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-medical-note)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-medical-note.csv), [Excel](StructureDefinition-lm-medical-note.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-medical-note",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-medical-note",
  "version" : "0.1.0",
  "name" : "MedicalNoteLogical",
  "title" : "Observation médicale",
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
  "description" : "Observation médicale réalisée par un professionnel de santé dans le contexte de la régulation médicale (RS-EDA).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-medical-note",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-medical-note",
      "path" : "lm-medical-note",
      "short" : "Observation médicale",
      "definition" : "Observation médicale réalisée par un professionnel de santé dans le contexte de la régulation médicale (RS-EDA)."
    },
    {
      "id" : "lm-medical-note.patientId",
      "path" : "lm-medical-note.patientId",
      "short" : "ID patient partagé",
      "definition" : "Identifiant partagé du patient. Pattern : {OrgId}.patient.{uniqueId}",
      "comment" : "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}patient(\\.[a-zA-Z0-9_-]+){1,2}$",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-medical-note.operator",
      "path" : "lm-medical-note.operator",
      "short" : "Professionnel de santé réalisant l'observation",
      "definition" : "Opérateur ayant effectué l'observation médicale.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-operator"
      }]
    },
    {
      "id" : "lm-medical-note.medicalNoteId",
      "path" : "lm-medical-note.medicalNoteId",
      "short" : "ID Observation",
      "definition" : "Identifiant unique de l'observation médicale, généré par le système partenaire.",
      "comment" : "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}medicalNote(\\.[a-zA-Z0-9_-]+){1,2}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-medical-note.creation",
      "path" : "lm-medical-note.creation",
      "short" : "Date/heure de l'observation",
      "definition" : "Date et heure de création de l'observation médicale (avec fuseau horaire, sans indicateur Z).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "lm-medical-note.freetext",
      "path" : "lm-medical-note.freetext",
      "short" : "Observations et commentaires",
      "definition" : "Champ libre pour les informations médicales et commentaires.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
