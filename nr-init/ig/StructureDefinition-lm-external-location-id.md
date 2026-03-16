# Identifiant de localisation externe - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identifiant de localisation externe**

## Logical Model: Identifiant de localisation externe 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-location-id | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:ExternalLocationIdLogical |

 
Identifiant externe référençant une localisation (établissement de santé, entreprise…). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Destination](StructureDefinition-lm-destination.md) and [Localisation](StructureDefinition-lm-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-external-location-id)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-external-location-id.csv), [Excel](StructureDefinition-lm-external-location-id.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-external-location-id",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-location-id",
  "version" : "0.1.0",
  "name" : "ExternalLocationIdLogical",
  "title" : "Identifiant de localisation externe",
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
  "description" : "Identifiant externe référençant une localisation (établissement de santé, entreprise…).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-location-id",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-external-location-id",
      "path" : "lm-external-location-id",
      "short" : "Identifiant de localisation externe",
      "definition" : "Identifiant externe référençant une localisation (établissement de santé, entreprise…)."
    },
    {
      "id" : "lm-external-location-id.source",
      "path" : "lm-external-location-id.source",
      "short" : "Source",
      "definition" : "Type de l'identifiant fourni.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-external-location-id-source|0.1.0"
      }
    },
    {
      "id" : "lm-external-location-id.value",
      "path" : "lm-external-location-id.value",
      "short" : "Valeur",
      "definition" : "Valeur de l'identifiant.",
      "comment" : "Regexp : ^([0-9A-Z]{2}0\\d{5}\\d|\\d{9}|\\d{14}|\\d{4}[A-Za-z])$",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
