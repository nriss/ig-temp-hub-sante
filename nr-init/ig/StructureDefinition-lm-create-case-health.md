# Dossier de régulation médicale (RS-EDA) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dossier de régulation médicale (RS-EDA)**

## Logical Model: Dossier de régulation médicale (RS-EDA) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-create-case-health | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_CreateCaseHealth |

 
Objet racine du message RS-EDA : dossier de régulation médicale transmis entre partenaires du Hub Santé. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-create-case-health)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-create-case-health.csv), [Excel](StructureDefinition-lm-create-case-health.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-create-case-health",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-create-case-health",
  "version" : "0.1.0",
  "name" : "LM_CreateCaseHealth",
  "title" : "Dossier de régulation médicale (RS-EDA)",
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
  "description" : "Objet racine du message RS-EDA : dossier de régulation médicale transmis entre partenaires du Hub Santé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-create-case-health",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-create-case-health",
      "path" : "lm-create-case-health",
      "short" : "Dossier de régulation médicale (RS-EDA)",
      "definition" : "Objet racine du message RS-EDA : dossier de régulation médicale transmis entre partenaires du Hub Santé."
    },
    {
      "id" : "lm-create-case-health.caseId",
      "path" : "lm-create-case-health.caseId",
      "short" : "Identifiant affaire/dossier",
      "definition" : "Identifiant partagé du dossier, généré par le système créateur. Format : {pays}.{domaine}.{organisation}.{senderCaseId}.",
      "comment" : "Regexp : ^([a-zA-Z0-9_-]+\\.?){4,10}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-create-case-health.senderCaseId",
      "path" : "lm-create-case-health.senderCaseId",
      "short" : "Identifiant local du dossier",
      "definition" : "Numéro du dossier dans le SI de l'émetteur.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-create-case-health.creation",
      "path" : "lm-create-case-health.creation",
      "short" : "Date/heure de création",
      "definition" : "Date et heure de création du dossier (avec fuseau horaire, sans indicateur Z).",
      "comment" : "Regexp : ^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}[\\-+]\\d{2}:\\d{2}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "lm-create-case-health.perimeter",
      "path" : "lm-create-case-health.perimeter",
      "short" : "Filière",
      "definition" : "Filière du CRRA destinataire à laquelle le dossier doit être adressé.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-perimeter|0.1.0"
      }
    },
    {
      "id" : "lm-create-case-health.interventionType",
      "path" : "lm-create-case-health.interventionType",
      "short" : "Type d'intervention",
      "definition" : "Type d'intervention : primaire ou secondaire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-intervention-type|0.1.0"
      }
    },
    {
      "id" : "lm-create-case-health.qualification",
      "path" : "lm-create-case-health.qualification",
      "short" : "Qualification",
      "definition" : "Qualification médicale et opérationnelle du dossier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-qualification"
      }]
    },
    {
      "id" : "lm-create-case-health.location",
      "path" : "lm-create-case-health.location",
      "short" : "Localisation",
      "definition" : "Localisation de l'intervention.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location"
      }]
    },
    {
      "id" : "lm-create-case-health.initialAlert",
      "path" : "lm-create-case-health.initialAlert",
      "short" : "Alerte initiale",
      "definition" : "Alerte initiale reçue par le SAMU.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-alert"
      }]
    },
    {
      "id" : "lm-create-case-health.owner",
      "path" : "lm-create-case-health.owner",
      "short" : "CRRA traitant",
      "definition" : "Identifiant du CRRA prenant en charge le dossier.",
      "comment" : "Regexp : ^([a-zA-Z0-9_-]+\\.?){4,9}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-create-case-health.patient",
      "path" : "lm-create-case-health.patient",
      "short" : "Patient(s)",
      "definition" : "Patient(s) concerné(s) par le dossier.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-patient"
      }]
    },
    {
      "id" : "lm-create-case-health.medicalNote",
      "path" : "lm-create-case-health.medicalNote",
      "short" : "Observation(s) médicale(s)",
      "definition" : "Observations médicales associées au dossier.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-medical-note"
      }]
    },
    {
      "id" : "lm-create-case-health.decision",
      "path" : "lm-create-case-health.decision",
      "short" : "Décision(s)",
      "definition" : "Décisions de régulation médicale prises pour le dossier.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-decision"
      }]
    },
    {
      "id" : "lm-create-case-health.additionalInformation",
      "path" : "lm-create-case-health.additionalInformation",
      "short" : "Informations complémentaires",
      "definition" : "Données complémentaires non structurées (max. 3 entrées clé/valeur).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-additional-information"
      }]
    }]
  }
}

```
