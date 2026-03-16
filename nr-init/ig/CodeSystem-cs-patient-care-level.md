# Niveau de soin du patient (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Niveau de soin du patient (Hub Santé)**

## CodeSystem: Niveau de soin du patient (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-patient-care-level | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSPatientCareLevel |

 
Niveaux de soins spécifiques au patient dans le contexte de la régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSPatientCareLevel](ValueSet-vs-patient-care-level.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-patient-care-level",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-patient-care-level",
  "version" : "0.1.0",
  "name" : "CSPatientCareLevel",
  "title" : "Niveau de soin du patient (Hub Santé)",
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
  "description" : "Niveaux de soins spécifiques au patient dans le contexte de la régulation médicale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "R1",
    "display" : "R1"
  },
  {
    "code" : "R2",
    "display" : "R2"
  },
  {
    "code" : "R3",
    "display" : "R3"
  },
  {
    "code" : "R4",
    "display" : "R4"
  }]
}

```
