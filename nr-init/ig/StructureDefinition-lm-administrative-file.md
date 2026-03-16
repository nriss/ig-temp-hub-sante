# Dossier administratif - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dossier administratif**

## Logical Model: Dossier administratif 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-administrative-file | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:AdministrativeFileLogical |

 
Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Patient](StructureDefinition-lm-patient.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-administrative-file)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-administrative-file.csv), [Excel](StructureDefinition-lm-administrative-file.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-administrative-file",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-administrative-file",
  "version" : "0.1.0",
  "name" : "AdministrativeFileLogical",
  "title" : "Dossier administratif",
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
  "description" : "Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-administrative-file",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-administrative-file",
      "path" : "lm-administrative-file",
      "short" : "Dossier administratif",
      "definition" : "Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant."
    },
    {
      "id" : "lm-administrative-file.externalId",
      "path" : "lm-administrative-file.externalId",
      "short" : "Identifiants externes",
      "definition" : "Identifiants patient provenant de systèmes externes (NIR, SINUS, dossard…).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-id"
      }]
    },
    {
      "id" : "lm-administrative-file.generalPractitioner",
      "path" : "lm-administrative-file.generalPractitioner",
      "short" : "Médecin traitant",
      "definition" : "Médecin traitant du patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-general-practitioner"
      }]
    }]
  }
}

```
