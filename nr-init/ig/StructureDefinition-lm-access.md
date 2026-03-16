# Accès - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Accès**

## Logical Model: Accès 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-access | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:AccessLogical |

 
Informations d'accès à une localisation (bâtiment, étage, digicode…). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Localisation](StructureDefinition-lm-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-access)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-access.csv), [Excel](StructureDefinition-lm-access.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-access",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-access",
  "version" : "0.1.0",
  "name" : "AccessLogical",
  "title" : "Accès",
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
  "description" : "Informations d'accès à une localisation (bâtiment, étage, digicode…).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-access",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-access",
      "path" : "lm-access",
      "short" : "Accès",
      "definition" : "Informations d'accès à une localisation (bâtiment, étage, digicode…)."
    },
    {
      "id" : "lm-access.floor",
      "path" : "lm-access.floor",
      "short" : "Étage",
      "definition" : "Numéro ou description de l'étage.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.roomNumber",
      "path" : "lm-access.roomNumber",
      "short" : "Numéro de chambre",
      "definition" : "Numéro de chambre ou d'appartement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.interphone",
      "path" : "lm-access.interphone",
      "short" : "Interphone",
      "definition" : "Numéro ou code de l'interphone.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.accessCode",
      "path" : "lm-access.accessCode",
      "short" : "Code d'accès",
      "definition" : "Code(s) d'accès (digicode, badge…).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.elevator",
      "path" : "lm-access.elevator",
      "short" : "Ascenseur",
      "definition" : "Indication sur l'ascenseur.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.buildingName",
      "path" : "lm-access.buildingName",
      "short" : "Nom du bâtiment",
      "definition" : "Nom ou lettre du bâtiment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.entrance",
      "path" : "lm-access.entrance",
      "short" : "Entrée",
      "definition" : "Numéro ou description de l'entrée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.entity",
      "path" : "lm-access.entity",
      "short" : "Entité",
      "definition" : "Entité ou service au sein du bâtiment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-access.phoneNumber",
      "path" : "lm-access.phoneNumber",
      "short" : "Numéro de téléphone",
      "definition" : "Numéro de téléphone du lieu. Format : +{indicatif}{numéro}.",
      "comment" : "Regexp : ^\\+\\d{5,18}$",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
