# Hypothèse de régulation médicale principale - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hypothèse de régulation médicale principale**

## Logical Model: Hypothèse de régulation médicale principale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-main-diagnosis | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:MainDiagnosisLogical |

 
Hypothèse diagnostique principale issue de la régulation médicale. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Hypothèses de régulation médicale](StructureDefinition-lm-hypothesis.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-main-diagnosis)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-main-diagnosis.csv), [Excel](StructureDefinition-lm-main-diagnosis.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-main-diagnosis",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-main-diagnosis",
  "version" : "0.1.0",
  "name" : "MainDiagnosisLogical",
  "title" : "Hypothèse de régulation médicale principale",
  "status" : "draft",
  "date" : "2026-03-16T13:14:36+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Hypothèse diagnostique principale issue de la régulation médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-main-diagnosis",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-main-diagnosis",
      "path" : "lm-main-diagnosis",
      "short" : "Hypothèse de régulation médicale principale",
      "definition" : "Hypothèse diagnostique principale issue de la régulation médicale."
    },
    {
      "id" : "lm-main-diagnosis.code",
      "path" : "lm-main-diagnosis.code",
      "short" : "Code",
      "definition" : "Code de la nomenclature associée (CIM-10).",
      "comment" : "Regexp : ^[A-Z]\\d{2}(\\.[\\d\\+\\-]{1,3})?$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-main-diagnosis.label",
      "path" : "lm-main-diagnosis.label",
      "short" : "Libellé",
      "definition" : "Libellé de la nomenclature associée. Obligatoire pour permettre l'affichage même si le code n'est pas reconnu.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
