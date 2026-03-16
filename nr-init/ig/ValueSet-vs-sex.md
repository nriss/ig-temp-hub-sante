# Sexe du patient (Hub Santé) - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexe du patient (Hub Santé)**

## ValueSet: Sexe du patient (Hub Santé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-sex | *Version*:0.1.0 |
| Draft as of 2026-03-16 | *Computable Name*:VSSex |

 
Codes de sexe du patient. 

 **References** 

* [Traits stricts de l'identité](StructureDefinition-lm-ins-strict-features.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-sex",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/ValueSet/vs-sex",
  "version" : "0.1.0",
  "name" : "VSSex",
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
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/hubsante/CodeSystem/cs-sex",
      "version" : "0.1.0"
    }]
  }
}

```
