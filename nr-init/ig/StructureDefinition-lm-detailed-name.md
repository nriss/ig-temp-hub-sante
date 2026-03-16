# Prénom & nom usuel - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prénom & nom usuel**

## Logical Model: Prénom & nom usuel /h2> Official URL: https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-name Version: 0.1.0 Draft as of 2026-03-16 Computable Name: LM_DetailedName Prénom et nom usuel d'une personne. Objet transverse utilisé dans plusieurs contextes (appelant, médecin traitant, identité patient). Utilisations: * Utilise ce/t/te Modèle logique: Médecin traitant and Identité Vous pouvez également vérifier les usages dans le FHIR IG Statistics Formal Views of Profile Content Description of Profiles, Differentials, Snapshots and how the different presentations work.   Other representations of profile: CSV, Excel   <prev top   next> IG © 2020+ Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris. Package ans.fhir.fr.hubsante#0.1.0 based on FHIR 4.0.1. Generated 2026-03-16 Liens : Table des matières | QA | Historique des versions Documentation | New Issue Ministère des Solidarités et de la Santé Agence du numérique en santé Agence du Numérique en Santé 2-10 Rue d'Oradour-sur-Glane 75015 Paris * Contact 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-detailed-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-name",
  "version" : "0.1.0",
  "name" : "LM_DetailedName",
  "title" : "Prénom & nom usuel",
  "status" : "draft",
  "date" : "2026-03-16T10:29:29+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Prénom et nom usuel d'une personne. Objet transverse utilisé dans plusieurs contextes (appelant, médecin traitant, identité patient).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-name",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-detailed-name",
      "path" : "lm-detailed-name",
      "short" : "Prénom & nom usuel",
      "definition" : "Prénom et nom usuel d'une personne. Objet transverse utilisé dans plusieurs contextes (appelant, médecin traitant, identité patient)."
    },
    {
      "id" : "lm-detailed-name.complete",
      "path" : "lm-detailed-name.complete",
      "short" : "Prénom et nom",
      "definition" : "Prénom et nom usuel. Si firstName et lastName sont renseignés, format : \"{firstName} {lastName}\". Spécificités 15-18 : NexSIS ne fournit que ce champ concaténé.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-detailed-name.lastName",
      "path" : "lm-detailed-name.lastName",
      "short" : "Nom",
      "definition" : "Nom usuel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-detailed-name.firstName",
      "path" : "lm-detailed-name.firstName",
      "short" : "Prénom",
      "definition" : "Prénom usuel. Les prénoms composés sont séparés par \"-\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
