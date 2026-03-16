# Décision médicale - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Décision médicale**

## Logical Model: Décision médicale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-decision | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Decision |

 
Décision de régulation médicale prise par l'opérateur pour un dossier donné. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-decision)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-decision.csv), [Excel](StructureDefinition-lm-decision.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-decision",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-decision",
  "version" : "0.1.0",
  "name" : "LM_Decision",
  "title" : "Décision médicale",
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
  "description" : "Décision de régulation médicale prise par l'opérateur pour un dossier donné.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-decision",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-decision",
      "path" : "lm-decision",
      "short" : "Décision médicale",
      "definition" : "Décision de régulation médicale prise par l'opérateur pour un dossier donné."
    },
    {
      "id" : "lm-decision.creation",
      "path" : "lm-decision.creation",
      "short" : "Date/heure de la décision",
      "definition" : "Date et heure de la décision (avec fuseau horaire).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "lm-decision.operator",
      "path" : "lm-decision.operator",
      "short" : "Opérateur",
      "definition" : "Professionnel de santé ayant pris la décision.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-operator"
      }]
    },
    {
      "id" : "lm-decision.decisionType",
      "path" : "lm-decision.decisionType",
      "short" : "Type de décision",
      "definition" : "Type de décision médicale.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-decision-type|0.1.0"
      }
    },
    {
      "id" : "lm-decision.patientId",
      "path" : "lm-decision.patientId",
      "short" : "ID patient",
      "definition" : "Identifiant partagé du patient concerné par la décision.",
      "comment" : "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}patient(\\.[a-zA-Z0-9_-]+){1,2}$",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-decision.resourceType",
      "path" : "lm-decision.resourceType",
      "short" : "Type de ressource",
      "definition" : "Type de ressource mobilisée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-resource-type|0.1.0"
      }
    },
    {
      "id" : "lm-decision.medicalTransport",
      "path" : "lm-decision.medicalTransport",
      "short" : "Transport médicalisé",
      "definition" : "Indique si un transport médicalisé est requis.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lm-decision.orientationType",
      "path" : "lm-decision.orientationType",
      "short" : "Type d'orientation",
      "definition" : "Type d'orientation du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-orientation-type|0.1.0"
      }
    },
    {
      "id" : "lm-decision.destination",
      "path" : "lm-decision.destination",
      "short" : "Destination",
      "definition" : "Établissement de destination du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-destination"
      }]
    }]
  }
}

```
