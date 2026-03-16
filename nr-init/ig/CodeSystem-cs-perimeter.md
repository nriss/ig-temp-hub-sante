# Filière de régulation (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Filière de régulation (Hub Santé)**

## CodeSystem: Filière de régulation (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-perimeter | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSPerimeter |

 
Filière du CRRA destinataire à laquelle le dossier doit être adressé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSPerimeter](ValueSet-vs-perimeter.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-perimeter",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-perimeter",
  "version" : "0.1.0",
  "name" : "CSPerimeter",
  "title" : "Filière de régulation (Hub Santé)",
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
  "description" : "Filière du CRRA destinataire à laquelle le dossier doit être adressé.",
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
    "code" : "AMU",
    "display" : "Aide Médicale Urgente"
  },
  {
    "code" : "NEONAT",
    "display" : "Néonatologie"
  },
  {
    "code" : "PSY",
    "display" : "Psychiatrie"
  },
  {
    "code" : "SNP",
    "display" : "Soins Non Programmés"
  }]
}

```
