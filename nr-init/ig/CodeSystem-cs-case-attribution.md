# Attribution du dossier (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Attribution du dossier (Hub Santé)**

## CodeSystem: Attribution du dossier (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-case-attribution | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:CS_CaseAttribution |

 
Attribution ou orientation du dossier de régulation médicale. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [VS_CaseAttribution](ValueSet-vs-case-attribution.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-case-attribution",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-case-attribution",
  "version" : "0.1.0",
  "name" : "CS_CaseAttribution",
  "title" : "Attribution du dossier (Hub Santé)",
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
  "description" : "Attribution ou orientation du dossier de régulation médicale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "content" : "complete",
  "count" : 40,
  "concept" : [{
    "code" : "DRM",
    "display" : "Demande de régulation médicale"
  },
  {
    "code" : "`DRM.MRU`",
    "display" : "Médecin régulateur urgentiste"
  },
  {
    "code" : "`DRM.MRU.MU`",
    "display" : "MU"
  },
  {
    "code" : "`DRM.MRU.INDISPMU`",
    "display" : "Indisponibilité MU"
  },
  {
    "code" : "`DRM.MRU.SSE`",
    "display" : "SSE"
  },
  {
    "code" : "`DRM.MRU.PLANBLAN`",
    "display" : "Plan Blanc"
  },
  {
    "code" : "`DRM.MRU.PCSAMU`",
    "display" : "PC SAMU"
  },
  {
    "code" : "`DRM.SPE`",
    "display" : "Spécialiste"
  },
  {
    "code" : "`DRM.SPE.DENT`",
    "display" : "Dentiste"
  },
  {
    "code" : "`DRM.SPE.GERIA`",
    "display" : "Gériatrie"
  },
  {
    "code" : "`DRM.SPE.PEDIA`",
    "display" : "Pédiatrie"
  },
  {
    "code" : "`DRM.SPE.OBST`",
    "display" : "Obstétrique"
  },
  {
    "code" : "`DRM.SPE.PSY`",
    "display" : "Psychiatrie"
  },
  {
    "code" : "`DRM.SPE.TOXICOL`",
    "display" : "Toxicologie"
  },
  {
    "code" : "`DRM.SPE.AUTRESPE`",
    "display" : "Autre spécialiste"
  },
  {
    "code" : "`DRM.MRL`",
    "display" : "Médecin régulateur libéral"
  },
  {
    "code" : "`DRM.MRL.MG`",
    "display" : "Médecin généraliste"
  },
  {
    "code" : "`DRM.MRL.INDISPMG`",
    "display" : "Indisponibilité MG"
  },
  {
    "code" : "`DRM.MRL.ABSML`",
    "display" : "Absence médecin libéral"
  },
  {
    "code" : "DR",
    "display" : "Dossier régulé"
  },
  {
    "code" : "`DR.DREG`",
    "display" : "Dossier en régulation"
  },
  {
    "code" : "`DR.DREG.DRARM`",
    "display" : "ARM"
  },
  {
    "code" : "`DR.DREG.DRDAC`",
    "display" : "DAC"
  },
  {
    "code" : "`DR.DREG.DRMED`",
    "display" : "Médecin"
  },
  {
    "code" : "`DR.DREG.DRPHARMA`",
    "display" : "Pharmacien"
  },
  {
    "code" : "`DR.DREG.DRDENT`",
    "display" : "Dentiste"
  },
  {
    "code" : "`DR.DREG.DRINFO`",
    "display" : "Informatif"
  },
  {
    "code" : "`DR.DREG.DOS-SIS`",
    "display" : "Dossier SIS"
  },
  {
    "code" : "`DR.DREG.DOS-FDO`",
    "display" : "Dossier FDO"
  },
  {
    "code" : "D",
    "display" : "Dossier clôturé"
  },
  {
    "code" : "`D.D-MALV`",
    "display" : "Malveillance"
  },
  {
    "code" : "`D.D-MALV.ERR`",
    "display" : "Erreur"
  },
  {
    "code" : "`D.D-MALV.NRP`",
    "display" : "NRP"
  },
  {
    "code" : "`D.D-MALV.MALV`",
    "display" : "Malveillance"
  },
  {
    "code" : "`D.D-MALV.FAX`",
    "display" : "Fax"
  },
  {
    "code" : "`D.D-MALV.ITERATIF`",
    "display" : "Itératif"
  },
  {
    "code" : "`D.D-IDENT`",
    "display" : "Identification"
  },
  {
    "code" : "`D.D-IDENT.ADMIN`",
    "display" : "Administratif"
  },
  {
    "code" : "`D.D-IDENT.PERSO`",
    "display" : "Personnel"
  },
  {
    "code" : "`D.D-IDENT.AUTRE`",
    "display" : "Autre"
  }]
}

```
