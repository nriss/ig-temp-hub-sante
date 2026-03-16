# Adresse détaillée - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adresse détaillée**

## Logical Model: Adresse détaillée 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-address | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:DetailedAddressLogical |

 
Adresse structurée avec numéro, type de voie et informations complémentaires. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Localisation](StructureDefinition-lm-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-detailed-address)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-detailed-address.csv), [Excel](StructureDefinition-lm-detailed-address.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-detailed-address",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-address",
  "version" : "0.1.0",
  "name" : "DetailedAddressLogical",
  "title" : "Adresse détaillée",
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
  "description" : "Adresse structurée avec numéro, type de voie et informations complémentaires.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-detailed-address",
      "path" : "lm-detailed-address",
      "short" : "Adresse détaillée",
      "definition" : "Adresse structurée avec numéro, type de voie et informations complémentaires."
    },
    {
      "id" : "lm-detailed-address.complete",
      "path" : "lm-detailed-address.complete",
      "short" : "Adresse complète",
      "definition" : "Adresse complète sous forme textuelle.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-detailed-address.number",
      "path" : "lm-detailed-address.number",
      "short" : "Numéro",
      "definition" : "Numéro dans la voie.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-detailed-address.wayName",
      "path" : "lm-detailed-address.wayName",
      "short" : "Nom de voie",
      "definition" : "Nom structuré de la voie.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-way-name"
      }]
    },
    {
      "id" : "lm-detailed-address.highway",
      "path" : "lm-detailed-address.highway",
      "short" : "Voie routière",
      "definition" : "Informations sur la voie routière (pour les interventions sur route).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-highway"
      }]
    }]
  }
}

```
