# Rôles des opérateurs (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rôles des opérateurs (Hub Santé)**

## CodeSystem: Rôles des opérateurs (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-operator-role | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CS_OperatorRole |

 
Rôles des professionnels de santé opérant au sein de l'entité émettrice d'un message Hub Santé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VS_OperatorRole](ValueSet-vs-operator-role.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-operator-role",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-operator-role",
  "version" : "0.1.0",
  "name" : "CS_OperatorRole",
  "title" : "Rôles des opérateurs (Hub Santé)",
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
  "description" : "Rôles des professionnels de santé opérant au sein de l'entité émettrice d'un message Hub Santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "AMBULANCIER",
    "display" : "Ambulancier"
  },
  {
    "code" : "ARM",
    "display" : "Assistant de Régulation Médicale"
  },
  {
    "code" : "INFIRMIER",
    "display" : "Infirmier"
  },
  {
    "code" : "MEDECIN",
    "display" : "Médecin"
  },
  {
    "code" : "PILOTE",
    "display" : "Pilote"
  },
  {
    "code" : "TCM",
    "display" : "Technicien de Coordination Médicale"
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
