# Canal de contact (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Canal de contact (Hub Santé)**

## CodeSystem: Canal de contact (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-contact-channel | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSContactChannel |

 
Origine du canal établi pour le contact. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSContactChannel](ValueSet-vs-contact-channel.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-contact-channel",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-contact-channel",
  "version" : "0.1.0",
  "name" : "CSContactChannel",
  "title" : "Canal de contact (Hub Santé)",
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
  "description" : "Origine du canal établi pour le contact.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "APPLICATION",
    "display" : "Application"
  },
  {
    "code" : "BAU",
    "display" : "Borne d'Appel d'Urgence"
  },
  {
    "code" : "DAU",
    "display" : "Dispositif d'Appel d'Urgence"
  },
  {
    "code" : "DEFIBRILLATEUR",
    "display" : "Défibrillateur"
  },
  {
    "code" : "ECALL",
    "display" : "eCall"
  },
  {
    "code" : "PERSONNE",
    "display" : "Personne"
  }]
}

```
