# Qualification du dossier - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Qualification du dossier**

## Logical Model: Qualification du dossier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-qualification | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Qualification |

 
Qualification médicale et opérationnelle du dossier de régulation médicale. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-qualification)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-qualification.csv), [Excel](StructureDefinition-lm-qualification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-qualification",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-qualification",
  "version" : "0.1.0",
  "name" : "LM_Qualification",
  "title" : "Qualification du dossier",
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
  "description" : "Qualification médicale et opérationnelle du dossier de régulation médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-qualification",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-qualification",
      "path" : "lm-qualification",
      "short" : "Qualification du dossier",
      "definition" : "Qualification médicale et opérationnelle du dossier de régulation médicale."
    },
    {
      "id" : "lm-qualification.origin",
      "path" : "lm-qualification.origin",
      "short" : "Origine",
      "definition" : "Canal ou entité à l'origine de la création du dossier.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-qualification-origin|0.1.0"
      }
    },
    {
      "id" : "lm-qualification.riskThreat",
      "path" : "lm-qualification.riskThreat",
      "short" : "Risques et menaces",
      "definition" : "Risques ou menaces identifiés associés au dossier.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-risk-threat"
      }]
    },
    {
      "id" : "lm-qualification.whatsHappen",
      "path" : "lm-qualification.whatsHappen",
      "short" : "Nature du problème",
      "definition" : "Code et libellé décrivant la nature de l'événement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-whats-happen"
      }]
    },
    {
      "id" : "lm-qualification.locationKind",
      "path" : "lm-qualification.locationKind",
      "short" : "Type de lieu",
      "definition" : "Code et libellé décrivant le type de lieu de l'intervention.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location-kind"
      }]
    },
    {
      "id" : "lm-qualification.healthMotive",
      "path" : "lm-qualification.healthMotive",
      "short" : "Motif de santé",
      "definition" : "Code et libellé décrivant le motif de santé de l'appel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-health-motive"
      }]
    },
    {
      "id" : "lm-qualification.details",
      "path" : "lm-qualification.details",
      "short" : "Détails du dossier",
      "definition" : "Informations complémentaires de qualification (statut, attribution, priorité, niveau de soin).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-case-details"
      }]
    }]
  }
}

```
