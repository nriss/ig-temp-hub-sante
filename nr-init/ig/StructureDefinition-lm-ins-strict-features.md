# Traits stricts de l'identité - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traits stricts de l'identité**

## Logical Model: Traits stricts de l'identité 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-ins-strict-features | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:InsStrictFeaturesLogical |

 
Traits stricts de l'identité du patient au sens de l'identité INS. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Identité](StructureDefinition-lm-identity.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-ins-strict-features)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-ins-strict-features.csv), [Excel](StructureDefinition-lm-ins-strict-features.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-ins-strict-features",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-ins-strict-features",
  "version" : "0.1.0",
  "name" : "InsStrictFeaturesLogical",
  "title" : "Traits stricts de l'identité",
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
  "description" : "Traits stricts de l'identité du patient au sens de l'identité INS.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-ins-strict-features",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-ins-strict-features",
      "path" : "lm-ins-strict-features",
      "short" : "Traits stricts de l'identité",
      "definition" : "Traits stricts de l'identité du patient au sens de l'identité INS."
    },
    {
      "id" : "lm-ins-strict-features.birthName",
      "path" : "lm-ins-strict-features.birthName",
      "short" : "Nom de naissance",
      "definition" : "Nom de naissance (nom de famille) du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-ins-strict-features.birthDate",
      "path" : "lm-ins-strict-features.birthDate",
      "short" : "Date de naissance",
      "definition" : "Date de naissance du patient.",
      "comment" : "Regexp : ^\\d{4}-\\d{2}-\\d{2}$",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "lm-ins-strict-features.sex",
      "path" : "lm-ins-strict-features.sex",
      "short" : "Sexe",
      "definition" : "Sexe du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-sex|0.1.0"
      }
    }]
  }
}

```
