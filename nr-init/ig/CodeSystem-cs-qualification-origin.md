# Origine de la qualification (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Origine de la qualification (Hub Santé)**

## CodeSystem: Origine de la qualification (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-qualification-origin | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CS_QualificationOrigin |

 
Canal ou entité à l'origine de la création du dossier de régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VS_QualificationOrigin](ValueSet-vs-qualification-origin.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-qualification-origin",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-qualification-origin",
  "version" : "0.1.0",
  "name" : "CS_QualificationOrigin",
  "title" : "Origine de la qualification (Hub Santé)",
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
  "description" : "Canal ou entité à l'origine de la création du dossier de régulation médicale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 19,
  "concept" : [{
    "code" : "15",
    "display" : "15"
  },
  {
    "code" : "116117",
    "display" : "116 117"
  },
  {
    "code" : "AUTOCOM",
    "display" : "Autocommutateur"
  },
  {
    "code" : "112",
    "display" : "112"
  },
  {
    "code" : "115",
    "display" : "115"
  },
  {
    "code" : "CRRA",
    "display" : "CRRA"
  },
  {
    "code" : "AUTREC15",
    "display" : "Autre C15"
  },
  {
    "code" : "`CTA-CONF`",
    "display" : "CTA Conférence"
  },
  {
    "code" : "`CTA-PI`",
    "display" : "CTA Premier Intervenant"
  },
  {
    "code" : "AUTRECTA",
    "display" : "Autre CTA"
  },
  {
    "code" : "CNR",
    "display" : "CNR"
  },
  {
    "code" : "FDO",
    "display" : "Forces de l'Ordre"
  },
  {
    "code" : "SNATED",
    "display" : "SNATED"
  },
  {
    "code" : "PDSSOS",
    "display" : "PDS/SOS"
  },
  {
    "code" : "TELASSIST",
    "display" : "Téléassistance"
  },
  {
    "code" : "CROSS",
    "display" : "CROSS"
  },
  {
    "code" : "PUBLIC",
    "display" : "Public"
  },
  {
    "code" : "DATA",
    "display" : "Data"
  },
  {
    "code" : "AUTRE",
    "display" : "Autre"
  }]
}

```
