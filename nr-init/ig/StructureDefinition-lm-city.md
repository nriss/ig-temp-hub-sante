# Commune - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Commune**

## Logical Model: Commune 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-city | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CityLogical |

 
Commune de la localisation. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Localisation](StructureDefinition-lm-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-city)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-city.csv), [Excel](StructureDefinition-lm-city.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-city",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-city",
  "version" : "0.1.0",
  "name" : "CityLogical",
  "title" : "Commune",
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
  "description" : "Commune de la localisation.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-city",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-city",
      "path" : "lm-city",
      "short" : "Commune",
      "definition" : "Commune de la localisation."
    },
    {
      "id" : "lm-city.name",
      "path" : "lm-city.name",
      "short" : "Nom de la commune",
      "definition" : "Nom de la commune.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-city.inseeCode",
      "path" : "lm-city.inseeCode",
      "short" : "Code INSEE",
      "definition" : "Code INSEE de la commune.",
      "comment" : "Regexp : ^[0-9]{5}$",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
