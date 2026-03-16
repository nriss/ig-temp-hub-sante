# Contact - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Contact**

## Logical Model: Contact 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-contact | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Contact |

 
Coordonnées de contact avec canal, type et valeur (utilisé pour l'appelant). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Appelant](StructureDefinition-lm-caller.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-contact)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-contact.csv), [Excel](StructureDefinition-lm-contact.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-contact",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-contact",
  "version" : "0.1.0",
  "name" : "LM_Contact",
  "title" : "Contact",
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
  "description" : "Coordonnées de contact avec canal, type et valeur (utilisé pour l'appelant).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-contact",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-contact",
      "path" : "lm-contact",
      "short" : "Contact",
      "definition" : "Coordonnées de contact avec canal, type et valeur (utilisé pour l'appelant)."
    },
    {
      "id" : "lm-contact.channel",
      "path" : "lm-contact.channel",
      "short" : "Canal",
      "definition" : "Origine du canal établi.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-contact-channel|0.1.0"
      }
    },
    {
      "id" : "lm-contact.type",
      "path" : "lm-contact.type",
      "short" : "Type de contact",
      "definition" : "Type de l'URI utilisée.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-contact-type|0.1.0"
      }
    },
    {
      "id" : "lm-contact.detail",
      "path" : "lm-contact.detail",
      "short" : "URI du contact",
      "definition" : "Valeur de l'URI. Format téléphone : +{indicatif pays}{numéro}.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
