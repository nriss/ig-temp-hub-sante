# Type d'appelant (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type d'appelant (Hub Santé)**

## CodeSystem: Type d'appelant (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-caller-type | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CS_CallerType |

 
Type ou qualité de l'appelant/requérant. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VS_CallerType](ValueSet-vs-caller-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-caller-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-caller-type",
  "version" : "0.1.0",
  "name" : "CS_CallerType",
  "title" : "Type d'appelant (Hub Santé)",
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
  "description" : "Type ou qualité de l'appelant/requérant.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 29,
  "concept" : [{
    "code" : "SUJET",
    "display" : "Sujet"
  },
  {
    "code" : "FAMILLE",
    "display" : "Famille"
  },
  {
    "code" : "TIERS",
    "display" : "Tiers"
  },
  {
    "code" : "POMPIER",
    "display" : "Pompier"
  },
  {
    "code" : "AMBULANC",
    "display" : "Ambulancier"
  },
  {
    "code" : "`AMBULANC.AASC`",
    "display" : "Ambulancier AASC"
  },
  {
    "code" : "`AMBULANC.AUTRESEC`",
    "display" : "Autre secouriste"
  },
  {
    "code" : "SECOUR",
    "display" : "Secouriste"
  },
  {
    "code" : "MED",
    "display" : "Médecin"
  },
  {
    "code" : "`MED.MEDSOS`",
    "display" : "Médecin SOS"
  },
  {
    "code" : "`MED.MRL`",
    "display" : "Médecin régulateur libéral"
  },
  {
    "code" : "`MED.EFFML`",
    "display" : "Effecteur médical libéral"
  },
  {
    "code" : "SANTE",
    "display" : "Professionnel de santé"
  },
  {
    "code" : "`SANTE.INF`",
    "display" : "Infirmier"
  },
  {
    "code" : "`SANTE.AIDESOIN`",
    "display" : "Aide-soignant"
  },
  {
    "code" : "`SANTE.SF`",
    "display" : "Sage-femme"
  },
  {
    "code" : "`SANTE.AIDEDOM`",
    "display" : "Aide à domicile"
  },
  {
    "code" : "`SANTE.PHARMA`",
    "display" : "Pharmacien"
  },
  {
    "code" : "`SANTE.DENTISTE`",
    "display" : "Dentiste"
  },
  {
    "code" : "`SANTE.LABO`",
    "display" : "Laboratoire"
  },
  {
    "code" : "`FDO-MILI`",
    "display" : "Forces de l'ordre / militaire"
  },
  {
    "code" : "`FDO-MILI.POL`",
    "display" : "Police"
  },
  {
    "code" : "`FDO-MILI.GENDARM`",
    "display" : "Gendarmerie"
  },
  {
    "code" : "`FDO-MILI.MILI`",
    "display" : "Militaire"
  },
  {
    "code" : "`ADM-TUTL`",
    "display" : "Administration / tutelle"
  },
  {
    "code" : "VIP",
    "display" : "VIP"
  },
  {
    "code" : "OBJCONNC",
    "display" : "Objet connecté"
  },
  {
    "code" : "AUTRE",
    "display" : "Autre"
  },
  {
    "code" : "INCONNU",
    "display" : "Inconnu"
  }]
}

```
