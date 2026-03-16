# Voie routière - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Voie routière**

## Logical Model: Voie routière 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-highway | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:HighwayLogical |

 
Informations relatives à une voie routière (autoroute, route nationale…). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Adresse détaillée](StructureDefinition-lm-detailed-address.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-highway)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-highway.csv), [Excel](StructureDefinition-lm-highway.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-highway",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-highway",
  "version" : "0.1.0",
  "name" : "HighwayLogical",
  "title" : "Voie routière",
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
  "description" : "Informations relatives à une voie routière (autoroute, route nationale…).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-highway",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-highway",
      "path" : "lm-highway",
      "short" : "Voie routière",
      "definition" : "Informations relatives à une voie routière (autoroute, route nationale…)."
    },
    {
      "id" : "lm-highway.name",
      "path" : "lm-highway.name",
      "short" : "Nom de la voie",
      "definition" : "Nom de la voie routière.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-highway.pk",
      "path" : "lm-highway.pk",
      "short" : "Point kilométrique",
      "definition" : "Point kilométrique sur la voie routière.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-highway.direction",
      "path" : "lm-highway.direction",
      "short" : "Direction",
      "definition" : "Direction sur la voie routière.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
