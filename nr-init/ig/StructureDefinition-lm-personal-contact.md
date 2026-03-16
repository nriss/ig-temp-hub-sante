# Contact personnel - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Contact personnel**

## Logical Model: Contact personnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-personal-contact | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:PersonalContactLogical |

 
Coordonnées de contact d'une personne (utilisé notamment pour le médecin traitant). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Médecin traitant](StructureDefinition-lm-general-practitioner.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-personal-contact)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-personal-contact.csv), [Excel](StructureDefinition-lm-personal-contact.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-personal-contact",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-personal-contact",
  "version" : "0.1.0",
  "name" : "PersonalContactLogical",
  "title" : "Contact personnel",
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
  "description" : "Coordonnées de contact d'une personne (utilisé notamment pour le médecin traitant).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-personal-contact",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-personal-contact",
      "path" : "lm-personal-contact",
      "short" : "Contact personnel",
      "definition" : "Coordonnées de contact d'une personne (utilisé notamment pour le médecin traitant)."
    },
    {
      "id" : "lm-personal-contact.type",
      "path" : "lm-personal-contact.type",
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
      "id" : "lm-personal-contact.detail",
      "path" : "lm-personal-contact.detail",
      "short" : "URI du contact",
      "definition" : "Valeur de l'URI utilisée. Format téléphone : +{indicatif pays}{numéro}.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
