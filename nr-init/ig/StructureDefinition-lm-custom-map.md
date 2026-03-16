# Champ personnalisé - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Champ personnalisé**

## Logical Model: Champ personnalisé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-custom-map | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CustomMapLogical |

 
Entrée de type clé/valeur permettant de transporter des informations complémentaires non structurées (max. 3 entrées). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Informations complémentaires](StructureDefinition-lm-additional-information.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-custom-map)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-custom-map.csv), [Excel](StructureDefinition-lm-custom-map.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-custom-map",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-custom-map",
  "version" : "0.1.0",
  "name" : "CustomMapLogical",
  "title" : "Champ personnalisé",
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
  "description" : "Entrée de type clé/valeur permettant de transporter des informations complémentaires non structurées (max. 3 entrées).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-custom-map",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-custom-map",
      "path" : "lm-custom-map",
      "short" : "Champ personnalisé",
      "definition" : "Entrée de type clé/valeur permettant de transporter des informations complémentaires non structurées (max. 3 entrées)."
    },
    {
      "id" : "lm-custom-map.key",
      "path" : "lm-custom-map.key",
      "short" : "Clé",
      "definition" : "Identifiant de la donnée personnalisée.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-custom-map.label",
      "path" : "lm-custom-map.label",
      "short" : "Libellé",
      "definition" : "Libellé lisible de la clé.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-custom-map.value",
      "path" : "lm-custom-map.value",
      "short" : "Valeur",
      "definition" : "Valeur associée à la clé.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-custom-map.freetext",
      "path" : "lm-custom-map.freetext",
      "short" : "Texte libre",
      "definition" : "Commentaire libre associé à l'entrée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
