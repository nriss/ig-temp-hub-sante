# Motif de santé - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motif de santé**

## Logical Model: Motif de santé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-health-motive | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_HealthMotive |

 
Code et libellé décrivant le motif de santé de l'appel (nomenclature SAMU). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Qualification du dossier](StructureDefinition-lm-qualification.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-health-motive)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-health-motive.csv), [Excel](StructureDefinition-lm-health-motive.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-health-motive",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-health-motive",
  "version" : "0.1.0",
  "name" : "LM_HealthMotive",
  "title" : "Motif de santé",
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
  "description" : "Code et libellé décrivant le motif de santé de l'appel (nomenclature SAMU).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-health-motive",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-health-motive",
      "path" : "lm-health-motive",
      "short" : "Motif de santé",
      "definition" : "Code et libellé décrivant le motif de santé de l'appel (nomenclature SAMU)."
    },
    {
      "id" : "lm-health-motive.code",
      "path" : "lm-health-motive.code",
      "short" : "Code",
      "definition" : "Code de la nomenclature associée.",
      "comment" : "Regexp : ^M\\d{2}\\.\\d{2}(\\.\\d{2})?$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-health-motive.label",
      "path" : "lm-health-motive.label",
      "short" : "Libellé",
      "definition" : "Libellé de la nomenclature associée.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
