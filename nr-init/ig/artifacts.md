# Artifacts Summary - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Contact personnel](StructureDefinition-lm-personal-contact.md) | Coordonnées de contact d'une personne (utilisé notamment pour le médecin traitant). |
| [Dossier administratif](StructureDefinition-lm-administrative-file.md) | Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant. |
| [Hypothèse de régulation médicale principale](StructureDefinition-lm-main-diagnosis.md) | Hypothèse diagnostique principale issue de la régulation médicale. |
| [Hypothèses de régulation médicale](StructureDefinition-lm-hypothesis.md) | Hypothèses diagnostiques principale et secondaires issues de la régulation médicale. |
| [Hypothèses de régulation médicale secondaires](StructureDefinition-lm-other-diagnosis.md) | Hypothèse diagnostique secondaire issue de la régulation médicale. |
| [Identifiant(s) patient(s)](StructureDefinition-lm-external-id.md) | Identifiant patient provenant d'un système externe. |
| [Identité](StructureDefinition-lm-identity.md) | Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel). |
| [Informations patient](StructureDefinition-lm-patient-detail.md) | Informations cliniques et physiologiques du patient. |
| [Médecin traitant](StructureDefinition-lm-general-practitioner.md) | Médecin traitant du patient. |
| [Observation médicale](StructureDefinition-lm-medical-note.md) | Observation médicale réalisée par un professionnel de santé dans le contexte de la régulation médicale (RS-EDA). |
| [Patient](StructureDefinition-lm-patient.md) | Patient pris en charge dans le cadre d'un dossier de régulation médicale (RS-EDA). |
| [Professionnel de santé réalisant l'observation](StructureDefinition-lm-operator.md) | Opérateur ayant effectué une observation médicale dans le contexte de la régulation médicale (RS-EDA). |
| [Prénom & nom usuel](StructureDefinition-lm-detailed-name.md) | Prénom et nom usuel d'une personne. Objet transverse utilisé dans plusieurs contextes (appelant, médecin traitant, identité patient). |
| [Traits stricts de l'identité](StructureDefinition-lm-ins-strict-features.md) | Traits stricts de l'identité du patient au sens de l'identité INS. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Niveau de soin du patient (Hub Santé)](ValueSet-vs-patient-care-level.md) | Niveaux de soins spécifiques au patient dans le contexte de la régulation médicale. |
| [Rôles des opérateurs (Hub Santé)](ValueSet-vs-operator-role.md) | Rôles des professionnels de santé opérant au sein de l'entité émettrice d'un message Hub Santé. |
| [Sexe du patient (Hub Santé)](ValueSet-vs-sex.md) | Codes de sexe du patient. |
| [Source des identifiants externes patient (Hub Santé)](ValueSet-vs-external-id-source.md) | Types d'identifiants externes utilisés pour identifier un patient. |
| [Type de contact (Hub Santé)](ValueSet-vs-contact-type.md) | Types d'URI utilisés pour les coordonnées de contact. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Niveau de soin du patient (Hub Santé)](CodeSystem-cs-patient-care-level.md) | Niveaux de soins spécifiques au patient dans le contexte de la régulation médicale. |
| [Rôles des opérateurs (Hub Santé)](CodeSystem-cs-operator-role.md) | Rôles des professionnels de santé opérant au sein de l'entité émettrice d'un message Hub Santé. |
| [Sexe du patient (Hub Santé)](CodeSystem-cs-sex.md) | Codes de sexe du patient. |
| [Source des identifiants externes patient (Hub Santé)](CodeSystem-cs-external-id-source.md) | Types d'identifiants externes utilisés pour identifier un patient. |
| [Type de contact (Hub Santé)](CodeSystem-cs-contact-type.md) | Types d'URI utilisés pour les coordonnées de contact. |

