# Hypothèses de régulation médicale - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hypothèses de régulation médicale**

## Logical Model: Hypothèses de régulation médicale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-hypothesis | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Hypothesis |

 
Hypothèses diagnostiques principale et secondaires issues de la régulation médicale. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Patient](StructureDefinition-lm-patient.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-hypothesis)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-hypothesis.csv), [Excel](StructureDefinition-lm-hypothesis.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-hypothesis",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-hypothesis",
  "version" : "0.1.0",
  "name" : "LM_Hypothesis",
  "title" : "Hypothèses de régulation médicale",
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
  "description" : "Hypothèses diagnostiques principale et secondaires issues de la régulation médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-hypothesis",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-hypothesis",
      "path" : "lm-hypothesis",
      "short" : "Hypothèses de régulation médicale",
      "definition" : "Hypothèses diagnostiques principale et secondaires issues de la régulation médicale."
    },
    {
      "id" : "lm-hypothesis.mainDiagnosis",
      "path" : "lm-hypothesis.mainDiagnosis",
      "short" : "Hypothèse principale",
      "definition" : "Hypothèse diagnostique principale.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-main-diagnosis"
      }]
    },
    {
      "id" : "lm-hypothesis.otherDiagnosis",
      "path" : "lm-hypothesis.otherDiagnosis",
      "short" : "Hypothèses secondaires",
      "definition" : "Hypothèses diagnostiques secondaires.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-other-diagnosis"
      }]
    }]
  }
}

```
