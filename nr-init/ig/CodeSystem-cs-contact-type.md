# Type de contact (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de contact (Hub Santé)**

## CodeSystem: Type de contact (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-contact-type | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSContactType |

 
Types d'URI utilisés pour les coordonnées de contact. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSContactType](ValueSet-vs-contact-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-contact-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-contact-type",
  "version" : "0.1.0",
  "name" : "CSContactType",
  "title" : "Type de contact (Hub Santé)",
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
  "description" : "Types d'URI utilisés pour les coordonnées de contact.",
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
    "code" : "EMAIL",
    "display" : "Email"
  },
  {
    "code" : "FAX",
    "display" : "Fax"
  },
  {
    "code" : "MSS",
    "display" : "Messagerie Sécurisée de Santé"
  },
  {
    "code" : "POSTAL",
    "display" : "Adresse postale"
  },
  {
    "code" : "RADIO",
    "display" : "Radio"
  },
  {
    "code" : "TEL",
    "display" : "Téléphone"
  },
  {
    "code" : "WEB",
    "display" : "Web"
  }]
}

```
