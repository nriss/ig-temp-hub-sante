# Type de ressource mobilisée (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de ressource mobilisée (Hub Santé)**

## CodeSystem: Type de ressource mobilisée (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-resource-type | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CSResourceType |

 
Type de ressource mobilisée dans le cadre de la décision de régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VSResourceType](ValueSet-vs-resource-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-resource-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-resource-type",
  "version" : "0.1.0",
  "name" : "CSResourceType",
  "title" : "Type de ressource mobilisée (Hub Santé)",
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
  "description" : "Type de ressource mobilisée dans le cadre de la décision de régulation médicale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 34,
  "concept" : [{
    "code" : "SMUR",
    "display" : "SMUR"
  },
  {
    "code" : "`SMUR.ADULT`",
    "display" : "SMUR Adulte"
  },
  {
    "code" : "`SMUR.PED`",
    "display" : "SMUR Pédiatrique"
  },
  {
    "code" : "`SMUR.UMH-S`",
    "display" : "UMH-S"
  },
  {
    "code" : "`SMUR.CUMP`",
    "display" : "CUMP"
  },
  {
    "code" : "HOSPIT",
    "display" : "Hospitalisation"
  },
  {
    "code" : "LIBERAL",
    "display" : "Libéral"
  },
  {
    "code" : "`LIBERAL.MG`",
    "display" : "Médecin Généraliste"
  },
  {
    "code" : "`LIBERAL.PHARM`",
    "display" : "Pharmacien"
  },
  {
    "code" : "`LIBERAL.INF`",
    "display" : "Infirmier"
  },
  {
    "code" : "`LIBERAL.KINE`",
    "display" : "Kinésithérapeute"
  },
  {
    "code" : "`LIBERAL.SOS`",
    "display" : "SOS Médecins"
  },
  {
    "code" : "`LIBERAL.MMG`",
    "display" : "Maison Médicale de Garde"
  },
  {
    "code" : "`LIBERAL.MSPD`",
    "display" : "MSPD"
  },
  {
    "code" : "`LIBERAL.MCS`",
    "display" : "MCS"
  },
  {
    "code" : "`LIBERAL.SPEMED`",
    "display" : "Spécialiste médical"
  },
  {
    "code" : "`LIBERAL.DENT`",
    "display" : "Dentiste"
  },
  {
    "code" : "`LIBERAL.LABO`",
    "display" : "Laboratoire"
  },
  {
    "code" : "`LIBERAL.AUTREPRO`",
    "display" : "Autre professionnel libéral"
  },
  {
    "code" : "TSU",
    "display" : "Transport Sanitaire Urgent"
  },
  {
    "code" : "SIS",
    "display" : "Service Incendie et Secours"
  },
  {
    "code" : "`SIS.MEDSP`",
    "display" : "Médecin SDIS"
  },
  {
    "code" : "`SIS.ISP`",
    "display" : "Infirmier Sapeur-Pompier"
  },
  {
    "code" : "`SIS.SP`",
    "display" : "Sapeur-Pompier"
  },
  {
    "code" : "AASC",
    "display" : "Association Agréée de Sécurité Civile"
  },
  {
    "code" : "FDO",
    "display" : "Forces de l'Ordre"
  },
  {
    "code" : "`FDO.PN`",
    "display" : "Police Nationale"
  },
  {
    "code" : "`FDO.GEND`",
    "display" : "Gendarmerie"
  },
  {
    "code" : "`FDO.PM`",
    "display" : "Police Municipale"
  },
  {
    "code" : "`FDO.DOUANES`",
    "display" : "Douanes"
  },
  {
    "code" : "AUTRE",
    "display" : "Autre"
  },
  {
    "code" : "`AUTRE.ADM`",
    "display" : "Administratif"
  },
  {
    "code" : "`AUTRE.DAE`",
    "display" : "DAE"
  },
  {
    "code" : "`AUTRE.AUTRE`",
    "display" : "Autre"
  }]
}

```
