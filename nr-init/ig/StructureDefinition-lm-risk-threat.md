# Risque et menace - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risque et menace**

## Logical Model: Risque et menace 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-risk-threat | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:RiskThreatLogical |

 
Code et libellé décrivant un risque ou une menace associé au dossier (nomenclature SAMU). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Qualification du dossier](StructureDefinition-lm-qualification.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-risk-threat)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-risk-threat.csv), [Excel](StructureDefinition-lm-risk-threat.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-risk-threat",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-risk-threat",
  "version" : "0.1.0",
  "name" : "RiskThreatLogical",
  "title" : "Risque et menace",
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
  "description" : "Code et libellé décrivant un risque ou une menace associé au dossier (nomenclature SAMU).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-risk-threat",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-risk-threat",
      "path" : "lm-risk-threat",
      "short" : "Risque et menace",
      "definition" : "Code et libellé décrivant un risque ou une menace associé au dossier (nomenclature SAMU)."
    },
    {
      "id" : "lm-risk-threat.code",
      "path" : "lm-risk-threat.code",
      "short" : "Code",
      "definition" : "Code de la nomenclature associée.",
      "comment" : "Regexp : ^R\\d{2}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-risk-threat.label",
      "path" : "lm-risk-threat.label",
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
