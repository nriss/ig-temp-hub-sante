# Médecin traitant - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Médecin traitant**

## Logical Model: Médecin traitant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-general-practitioner | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_GeneralPractitioner |

 
Médecin traitant du patient. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier administratif](StructureDefinition-lm-administrative-file.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-general-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-general-practitioner.csv), [Excel](StructureDefinition-lm-general-practitioner.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-general-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-general-practitioner",
  "version" : "0.1.0",
  "name" : "LM_GeneralPractitioner",
  "title" : "Médecin traitant",
  "status" : "draft",
  "date" : "2026-03-16T10:29:29+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Médecin traitant du patient.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-general-practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-general-practitioner",
      "path" : "lm-general-practitioner",
      "short" : "Médecin traitant",
      "definition" : "Médecin traitant du patient."
    },
    {
      "id" : "lm-general-practitioner.detailedName",
      "path" : "lm-general-practitioner.detailedName",
      "short" : "Prénom et nom",
      "definition" : "Identité nominative du médecin traitant.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-name"
      }]
    },
    {
      "id" : "lm-general-practitioner.rppsId",
      "path" : "lm-general-practitioner.rppsId",
      "short" : "Identifiant RPPS",
      "definition" : "Numéro RPPS du médecin traitant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-general-practitioner.contact",
      "path" : "lm-general-practitioner.contact",
      "short" : "Contact",
      "definition" : "Coordonnées du médecin traitant.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-personal-contact"
      }]
    }]
  }
}

```
