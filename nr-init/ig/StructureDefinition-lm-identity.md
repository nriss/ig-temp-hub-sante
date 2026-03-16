# Identité - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identité**

## Logical Model: Identité 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-identity | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:IdentityLogical |

 
Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Patient](StructureDefinition-lm-patient.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-identity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-identity.csv), [Excel](StructureDefinition-lm-identity.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-identity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-identity",
  "version" : "0.1.0",
  "name" : "IdentityLogical",
  "title" : "Identité",
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
  "description" : "Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-identity",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-identity",
      "path" : "lm-identity",
      "short" : "Identité",
      "definition" : "Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel)."
    },
    {
      "id" : "lm-identity.strictFeatures",
      "path" : "lm-identity.strictFeatures",
      "short" : "Traits stricts",
      "definition" : "Traits stricts de l'identité INS (nom de naissance, date de naissance, sexe).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-ins-strict-features"
      }]
    },
    {
      "id" : "lm-identity.nonStrictFeatures",
      "path" : "lm-identity.nonStrictFeatures",
      "short" : "Traits non stricts",
      "definition" : "Prénom et nom usuel du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-name"
      }]
    }]
  }
}

```
