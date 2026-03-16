# Alerte initiale - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alerte initiale**

## Logical Model: Alerte initiale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-alert | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Alert |

 
Alerte initiale reçue par le SAMU, avec la réception, l'appelant et les notes associées. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-alert)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-alert.csv), [Excel](StructureDefinition-lm-alert.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-alert",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-alert",
  "version" : "0.1.0",
  "name" : "LM_Alert",
  "title" : "Alerte initiale",
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
  "description" : "Alerte initiale reçue par le SAMU, avec la réception, l'appelant et les notes associées.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-alert",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-alert",
      "path" : "lm-alert",
      "short" : "Alerte initiale",
      "definition" : "Alerte initiale reçue par le SAMU, avec la réception, l'appelant et les notes associées."
    },
    {
      "id" : "lm-alert.reception",
      "path" : "lm-alert.reception",
      "short" : "Date/heure de réception",
      "definition" : "Date et heure de réception de l'appel (avec fuseau horaire).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "lm-alert.caller",
      "path" : "lm-alert.caller",
      "short" : "Appelant",
      "definition" : "Personne à l'origine de l'appel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-caller"
      }]
    },
    {
      "id" : "lm-alert.notes",
      "path" : "lm-alert.notes",
      "short" : "Notes",
      "definition" : "Notes horodatées associées à l'alerte.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-notes"
      }]
    }]
  }
}

```
