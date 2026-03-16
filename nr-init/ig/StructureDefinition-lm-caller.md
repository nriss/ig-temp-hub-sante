# Appelant - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Appelant**

## Logical Model: Appelant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-caller | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CallerLogical |

 
Personne à l'origine de l'appel au SAMU, avec ses coordonnées et ses caractéristiques de communication. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Alerte initiale](StructureDefinition-lm-alert.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-caller)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-caller.csv), [Excel](StructureDefinition-lm-caller.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-caller",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-caller",
  "version" : "0.1.0",
  "name" : "CallerLogical",
  "title" : "Appelant",
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
  "description" : "Personne à l'origine de l'appel au SAMU, avec ses coordonnées et ses caractéristiques de communication.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-caller",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-caller",
      "path" : "lm-caller",
      "short" : "Appelant",
      "definition" : "Personne à l'origine de l'appel au SAMU, avec ses coordonnées et ses caractéristiques de communication."
    },
    {
      "id" : "lm-caller.callerContact",
      "path" : "lm-caller.callerContact",
      "short" : "Contact appelant",
      "definition" : "Coordonnées de l'appelant (canal, type, URI).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-contact"
      }]
    },
    {
      "id" : "lm-caller.callbackContact",
      "path" : "lm-caller.callbackContact",
      "short" : "Contact de rappel",
      "definition" : "Coordonnées de rappel si différentes du contact appelant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-contact"
      }]
    },
    {
      "id" : "lm-caller.detailedName",
      "path" : "lm-caller.detailedName",
      "short" : "Nom de l'appelant",
      "definition" : "Prénom et nom de l'appelant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-name"
      }]
    },
    {
      "id" : "lm-caller.type",
      "path" : "lm-caller.type",
      "short" : "Type d'appelant",
      "definition" : "Qualité ou type de l'appelant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-caller-type|0.1.0"
      }
    },
    {
      "id" : "lm-caller.language",
      "path" : "lm-caller.language",
      "short" : "Langue",
      "definition" : "Langue parlée par l'appelant (code BCP-47).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/languages|4.0.1"
      }
    },
    {
      "id" : "lm-caller.communication",
      "path" : "lm-caller.communication",
      "short" : "Communication",
      "definition" : "Qualité ou contrainte de communication avec l'appelant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-caller-communication|0.1.0"
      }
    },
    {
      "id" : "lm-caller.freetext",
      "path" : "lm-caller.freetext",
      "short" : "Texte libre",
      "definition" : "Informations complémentaires libres sur l'appelant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
