# Patient - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient**

## Logical Model: Patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:PatientLogical |

 
Patient pris en charge dans le cadre d'un dossier de régulation médicale (RS-EDA). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-patient.csv), [Excel](StructureDefinition-lm-patient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-patient",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient",
  "version" : "0.1.0",
  "name" : "PatientLogical",
  "title" : "Patient",
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
  "description" : "Patient pris en charge dans le cadre d'un dossier de régulation médicale (RS-EDA).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-patient",
      "path" : "lm-patient",
      "short" : "Patient",
      "definition" : "Patient pris en charge dans le cadre d'un dossier de régulation médicale (RS-EDA)."
    },
    {
      "id" : "lm-patient.patientId",
      "path" : "lm-patient.patientId",
      "short" : "ID patient partagé",
      "definition" : "Identifiant partagé du patient, généré par le système partenaire. Format : {OrgId}.patient.{uniqueId} ou {ID}.{senderCaseId}.patient.{ordre}.",
      "comment" : "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}patient(\\.[a-zA-Z0-9_-]+){1,2}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-patient.administrativeFile",
      "path" : "lm-patient.administrativeFile",
      "short" : "Dossier administratif",
      "definition" : "Dossier administratif du patient (identifiants externes, médecin traitant).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-administrative-file"
      }]
    },
    {
      "id" : "lm-patient.identity",
      "path" : "lm-patient.identity",
      "short" : "Identité",
      "definition" : "Identité du patient (traits stricts INS et traits non stricts).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-identity"
      }]
    },
    {
      "id" : "lm-patient.detail",
      "path" : "lm-patient.detail",
      "short" : "Informations patient",
      "definition" : "Informations cliniques et physiologiques du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient-detail"
      }]
    },
    {
      "id" : "lm-patient.hypothesis",
      "path" : "lm-patient.hypothesis",
      "short" : "Hypothèses de régulation médicale",
      "definition" : "Hypothèses diagnostiques issues de la régulation médicale.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-hypothesis"
      }]
    }]
  }
}

```
