# Statut du dossier (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut du dossier (Hub Santé)**

## CodeSystem: Statut du dossier (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-case-status | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSCaseStatus |

 
Statut du dossier de régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSCaseStatus](ValueSet-vs-case-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-case-status",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-case-status",
  "version" : "0.1.0",
  "name" : "CSCaseStatus",
  "title" : "Statut du dossier (Hub Santé)",
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
  "description" : "Statut du dossier de régulation médicale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "PROGRAM",
    "display" : "Programmé"
  },
  {
    "code" : "ACTIF",
    "display" : "Actif"
  },
  {
    "code" : "ACHEVE",
    "display" : "Achevé"
  },
  {
    "code" : "VALIDE",
    "display" : "Validé"
  },
  {
    "code" : "CLOTURE",
    "display" : "Clôturé"
  },
  {
    "code" : "CLASSE",
    "display" : "Classé"
  },
  {
    "code" : "ARCHIVE",
    "display" : "Archivé"
  }]
}

```
