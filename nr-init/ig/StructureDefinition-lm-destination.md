# Destination - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Destination**

## Logical Model: Destination 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-destination | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Destination |

 
Destination du patient à l'issue de la décision de régulation médicale. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Décision médicale](StructureDefinition-lm-decision.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-destination)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-destination.csv), [Excel](StructureDefinition-lm-destination.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-destination",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-destination",
  "version" : "0.1.0",
  "name" : "LM_Destination",
  "title" : "Destination",
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
  "description" : "Destination du patient à l'issue de la décision de régulation médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-destination",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-destination",
      "path" : "lm-destination",
      "short" : "Destination",
      "definition" : "Destination du patient à l'issue de la décision de régulation médicale."
    },
    {
      "id" : "lm-destination.externalLocationId",
      "path" : "lm-destination.externalLocationId",
      "short" : "Identifiant de localisation",
      "definition" : "Identifiant(s) externe(s) de l'établissement de destination.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-location-id"
      }]
    },
    {
      "id" : "lm-destination.freetext",
      "path" : "lm-destination.freetext",
      "short" : "Texte libre",
      "definition" : "Description libre de la destination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
