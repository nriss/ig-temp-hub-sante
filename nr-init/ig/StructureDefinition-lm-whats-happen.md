# Nature du problème - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nature du problème**

## Logical Model: Nature du problème 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-whats-happen | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_WhatsHappen |

 
Code et libellé décrivant la nature de l'événement déclenchant l'appel (nomenclature SAMU). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Qualification du dossier](StructureDefinition-lm-qualification.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-whats-happen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-whats-happen.csv), [Excel](StructureDefinition-lm-whats-happen.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-whats-happen",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-whats-happen",
  "version" : "0.1.0",
  "name" : "LM_WhatsHappen",
  "title" : "Nature du problème",
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
  "description" : "Code et libellé décrivant la nature de l'événement déclenchant l'appel (nomenclature SAMU).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-whats-happen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-whats-happen",
      "path" : "lm-whats-happen",
      "short" : "Nature du problème",
      "definition" : "Code et libellé décrivant la nature de l'événement déclenchant l'appel (nomenclature SAMU)."
    },
    {
      "id" : "lm-whats-happen.code",
      "path" : "lm-whats-happen.code",
      "short" : "Code",
      "definition" : "Code de la nomenclature associée.",
      "comment" : "Regexp : ^C\\d{2}(\\.\\d{2}){2}$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-whats-happen.label",
      "path" : "lm-whats-happen.label",
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
