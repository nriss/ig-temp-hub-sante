# Informations complémentaires - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informations complémentaires**

## Logical Model: Informations complémentaires 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-additional-information | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:AdditionalInformationLogical |

 
Informations complémentaires non structurées transportées sous forme de carte clé/valeur (max. 3 entrées). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-additional-information)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-additional-information.csv), [Excel](StructureDefinition-lm-additional-information.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-additional-information",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-additional-information",
  "version" : "0.1.0",
  "name" : "AdditionalInformationLogical",
  "title" : "Informations complémentaires",
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
  "description" : "Informations complémentaires non structurées transportées sous forme de carte clé/valeur (max. 3 entrées).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-additional-information",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-additional-information",
      "path" : "lm-additional-information",
      "short" : "Informations complémentaires",
      "definition" : "Informations complémentaires non structurées transportées sous forme de carte clé/valeur (max. 3 entrées)."
    },
    {
      "id" : "lm-additional-information.customMap",
      "path" : "lm-additional-information.customMap",
      "short" : "Champs personnalisés",
      "definition" : "Entrées clé/valeur personnalisées (maximum 3).",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-custom-map"
      }]
    }]
  }
}

```
