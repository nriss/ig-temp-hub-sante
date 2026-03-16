# Sexe du patient (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexe du patient (Hub Santé)**

## CodeSystem: Sexe du patient (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-sex | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSSex |

 
Codes de sexe du patient. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSSex](ValueSet-vs-sex.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-sex",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-sex",
  "version" : "0.1.0",
  "name" : "CSSex",
  "title" : "Sexe du patient (Hub Santé)",
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
  "description" : "Codes de sexe du patient.",
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
    "code" : "M",
    "display" : "Masculin"
  },
  {
    "code" : "F",
    "display" : "Féminin"
  },
  {
    "code" : "O",
    "display" : "Autre"
  },
  {
    "code" : "UN",
    "display" : "Inconnu"
  }]
}

```
