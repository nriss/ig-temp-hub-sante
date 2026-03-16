# Professionnel de santé réalisant l'observation - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Professionnel de santé réalisant l'observation**

## Logical Model: Professionnel de santé réalisant l'observation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-operator | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Operator |

 
Opérateur ayant effectué une observation médicale dans le contexte de la régulation médicale (RS-EDA). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Observation médicale](StructureDefinition-lm-medical-note.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-operator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-operator.csv), [Excel](StructureDefinition-lm-operator.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-operator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-operator",
  "version" : "0.1.0",
  "name" : "LM_Operator",
  "title" : "Professionnel de santé réalisant l'observation",
  "status" : "draft",
  "date" : "2026-03-16T10:29:29+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Opérateur ayant effectué une observation médicale dans le contexte de la régulation médicale (RS-EDA).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-operator",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-operator",
      "path" : "lm-operator",
      "short" : "Professionnel de santé réalisant l'observation",
      "definition" : "Opérateur ayant effectué une observation médicale dans le contexte de la régulation médicale (RS-EDA)."
    },
    {
      "id" : "lm-operator.label",
      "path" : "lm-operator.label",
      "short" : "Label",
      "definition" : "Nom/prénom ou identifiant de l'opérateur, selon les préférences de chaque partenaire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-operator.role",
      "path" : "lm-operator.role",
      "short" : "Rôle",
      "definition" : "Rôle de l'opérateur au sein de l'entité émettrice du message.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-operator-role|0.1.0"
      }
    }]
  }
}

```
