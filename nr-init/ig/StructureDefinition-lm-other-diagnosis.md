# Hypothèses de régulation médicale secondaires - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hypothèses de régulation médicale secondaires**

## Logical Model: Hypothèses de régulation médicale secondaires 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-other-diagnosis | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:OtherDiagnosisLogical |

 
Hypothèse diagnostique secondaire issue de la régulation médicale. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Hypothèses de régulation médicale](StructureDefinition-lm-hypothesis.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-other-diagnosis)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-other-diagnosis.csv), [Excel](StructureDefinition-lm-other-diagnosis.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-other-diagnosis",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-other-diagnosis",
  "version" : "0.1.0",
  "name" : "OtherDiagnosisLogical",
  "title" : "Hypothèses de régulation médicale secondaires",
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
  "description" : "Hypothèse diagnostique secondaire issue de la régulation médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-other-diagnosis",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-other-diagnosis",
      "path" : "lm-other-diagnosis",
      "short" : "Hypothèses de régulation médicale secondaires",
      "definition" : "Hypothèse diagnostique secondaire issue de la régulation médicale."
    },
    {
      "id" : "lm-other-diagnosis.code",
      "path" : "lm-other-diagnosis.code",
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
      "id" : "lm-other-diagnosis.label",
      "path" : "lm-other-diagnosis.label",
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
