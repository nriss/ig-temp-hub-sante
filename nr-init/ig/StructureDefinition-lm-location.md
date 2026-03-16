# Localisation - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Localisation**

## Logical Model: Localisation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:LM_Location |

 
Localisation de l'intervention, incluant l'adresse, la commune, l'accès, les coordonnées géographiques et les références externes. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.hubsante|current/StructureDefinition/lm-location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lm-location.csv), [Excel](StructureDefinition-lm-location.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lm-location",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location",
  "version" : "0.1.0",
  "name" : "LM_Location",
  "title" : "Localisation",
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
  "description" : "Localisation de l'intervention, incluant l'adresse, la commune, l'accès, les coordonnées géographiques et les références externes.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lm-location",
      "path" : "lm-location",
      "short" : "Localisation",
      "definition" : "Localisation de l'intervention, incluant l'adresse, la commune, l'accès, les coordonnées géographiques et les références externes."
    },
    {
      "id" : "lm-location.name",
      "path" : "lm-location.name",
      "short" : "Nom du lieu",
      "definition" : "Nom du lieu ou de l'établissement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lm-location.externalLocationId",
      "path" : "lm-location.externalLocationId",
      "short" : "Identifiant(s) externe(s)",
      "definition" : "Identifiant(s) externe(s) référençant la localisation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-location-id"
      }]
    },
    {
      "id" : "lm-location.detailedAddress",
      "path" : "lm-location.detailedAddress",
      "short" : "Adresse détaillée",
      "definition" : "Adresse structurée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-detailed-address"
      }]
    },
    {
      "id" : "lm-location.city",
      "path" : "lm-location.city",
      "short" : "Commune",
      "definition" : "Commune de la localisation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-city"
      }]
    },
    {
      "id" : "lm-location.access",
      "path" : "lm-location.access",
      "short" : "Accès",
      "definition" : "Informations d'accès (bâtiment, étage, digicode…).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-access"
      }]
    },
    {
      "id" : "lm-location.geometry",
      "path" : "lm-location.geometry",
      "short" : "Géométrie",
      "definition" : "Coordonnées géographiques horodatées.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-geometry"
      }]
    },
    {
      "id" : "lm-location.externalInfo",
      "path" : "lm-location.externalInfo",
      "short" : "Information(s) externe(s)",
      "definition" : "Références vers des ressources externes (photo, carte, site web…).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/StructureDefinition/lm-external-info"
      }]
    },
    {
      "id" : "lm-location.freetext",
      "path" : "lm-location.freetext",
      "short" : "Texte libre",
      "definition" : "Description libre de la localisation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
