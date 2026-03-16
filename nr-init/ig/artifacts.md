# Artifacts Summary - Hub Santé v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Accès](StructureDefinition-lm-access.md) | Informations d'accès à une localisation (bâtiment, étage, digicode…). |
| [Adresse détaillée](StructureDefinition-lm-detailed-address.md) | Adresse structurée avec numéro, type de voie et informations complémentaires. |
| [Alerte initiale](StructureDefinition-lm-alert.md) | Alerte initiale reçue par le SAMU, avec la réception, l'appelant et les notes associées. |
| [Appelant](StructureDefinition-lm-caller.md) | Personne à l'origine de l'appel au SAMU, avec ses coordonnées et ses caractéristiques de communication. |
| [Champ personnalisé](StructureDefinition-lm-custom-map.md) | Entrée de type clé/valeur permettant de transporter des informations complémentaires non structurées (max. 3 entrées). |
| [Commune](StructureDefinition-lm-city.md) | Commune de la localisation. |
| [Contact](StructureDefinition-lm-contact.md) | Coordonnées de contact avec canal, type et valeur (utilisé pour l'appelant). |
| [Contact personnel](StructureDefinition-lm-personal-contact.md) | Coordonnées de contact d'une personne (utilisé notamment pour le médecin traitant). |
| [Coordonnées géographiques](StructureDefinition-lm-coord.md) | Coordonnées géographiques d'un point (latitude, longitude, altitude, précision). |
| [Destination](StructureDefinition-lm-destination.md) | Destination du patient à l'issue de la décision de régulation médicale. |
| [Dossier administratif](StructureDefinition-lm-administrative-file.md) | Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant. |
| [Dossier de régulation médicale (RS-EDA)](StructureDefinition-lm-create-case-health.md) | Objet racine du message RS-EDA : dossier de régulation médicale transmis entre partenaires du Hub Santé. |
| [Décision médicale](StructureDefinition-lm-decision.md) | Décision de régulation médicale prise par l'opérateur pour un dossier donné. |
| [Détails du dossier](StructureDefinition-lm-case-details.md) | Informations complémentaires de qualification du dossier de régulation médicale. |
| [Géométrie](StructureDefinition-lm-geometry.md) | Localisation géographique horodatée d'un point. |
| [Hypothèse de régulation médicale principale](StructureDefinition-lm-main-diagnosis.md) | Hypothèse diagnostique principale issue de la régulation médicale. |
| [Hypothèses de régulation médicale](StructureDefinition-lm-hypothesis.md) | Hypothèses diagnostiques principale et secondaires issues de la régulation médicale. |
| [Hypothèses de régulation médicale secondaires](StructureDefinition-lm-other-diagnosis.md) | Hypothèse diagnostique secondaire issue de la régulation médicale. |
| [Identifiant de localisation externe](StructureDefinition-lm-external-location-id.md) | Identifiant externe référençant une localisation (établissement de santé, entreprise…). |
| [Identifiant(s) patient(s)](StructureDefinition-lm-external-id.md) | Identifiant patient provenant d'un système externe. |
| [Identité](StructureDefinition-lm-identity.md) | Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel). |
| [Information externe](StructureDefinition-lm-external-info.md) | Référence vers une ressource externe apportant des informations complémentaires sur la localisation. |
| [Informations complémentaires](StructureDefinition-lm-additional-information.md) | Informations complémentaires non structurées transportées sous forme de carte clé/valeur (max. 3 entrées). |
| [Informations patient](StructureDefinition-lm-patient-detail.md) | Informations cliniques et physiologiques du patient. |
| [Localisation](StructureDefinition-lm-location.md) | Localisation de l'intervention, incluant l'adresse, la commune, l'accès, les coordonnées géographiques et les références externes. |
| [Motif de santé](StructureDefinition-lm-health-motive.md) | Code et libellé décrivant le motif de santé de l'appel (nomenclature SAMU). |
| [Médecin traitant](StructureDefinition-lm-general-practitioner.md) | Médecin traitant du patient. |
| [Nature du problème](StructureDefinition-lm-whats-happen.md) | Code et libellé décrivant la nature de l'événement déclenchant l'appel (nomenclature SAMU). |
| [Nom de voie](StructureDefinition-lm-way-name.md) | Nom complet d'une voie (rue, avenue, boulevard…). |
| [Note](StructureDefinition-lm-notes.md) | Note horodatée associée à l'alerte initiale. |
| [Observation médicale](StructureDefinition-lm-medical-note.md) | Observation médicale réalisée par un professionnel de santé dans le contexte de la régulation médicale (RS-EDA). |
| [Patient](StructureDefinition-lm-patient.md) | Patient pris en charge dans le cadre d'un dossier de régulation médicale (RS-EDA). |
| [Point géographique](StructureDefinition-lm-point.md) | Point géographique avec ses coordonnées et une indication sur la provenance AML. |
| [Professionnel de santé réalisant l'observation](StructureDefinition-lm-operator.md) | Opérateur ayant effectué une observation médicale dans le contexte de la régulation médicale (RS-EDA). |
| [Prénom & nom usuel](StructureDefinition-lm-detailed-name.md) | Prénom et nom usuel d'une personne. Objet transverse utilisé dans plusieurs contextes (appelant, médecin traitant, identité patient). |
| [Qualification du dossier](StructureDefinition-lm-qualification.md) | Qualification médicale et opérationnelle du dossier de régulation médicale. |
| [Risque et menace](StructureDefinition-lm-risk-threat.md) | Code et libellé décrivant un risque ou une menace associé au dossier (nomenclature SAMU). |
| [Traits stricts de l'identité](StructureDefinition-lm-ins-strict-features.md) | Traits stricts de l'identité du patient au sens de l'identité INS. |
| [Type de lieu](StructureDefinition-lm-location-kind.md) | Code et libellé décrivant le type de lieu de l'intervention (nomenclature SAMU). |
| [Voie routière](StructureDefinition-lm-highway.md) | Informations relatives à une voie routière (autoroute, route nationale…). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Attribution du dossier (Hub Santé)](ValueSet-vs-case-attribution.md) | Attribution ou orientation du dossier de régulation médicale. |
| [Canal de contact (Hub Santé)](ValueSet-vs-contact-channel.md) | Origine du canal établi pour le contact. |
| [Communication avec l'appelant (Hub Santé)](ValueSet-vs-caller-communication.md) | Qualité ou contrainte de communication avec l'appelant. |
| [Filière de régulation (Hub Santé)](ValueSet-vs-perimeter.md) | Filière du CRRA destinataire à laquelle le dossier doit être adressé. |
| [Niveau de soin du patient (Hub Santé)](ValueSet-vs-patient-care-level.md) | Niveaux de soins spécifiques au patient dans le contexte de la régulation médicale. |
| [Origine de la qualification (Hub Santé)](ValueSet-vs-qualification-origin.md) | Canal ou entité à l'origine de la création du dossier de régulation médicale. |
| [Priorité du dossier (Hub Santé)](ValueSet-vs-case-priority.md) | Niveau de priorité du dossier de régulation médicale. |
| [Précision des coordonnées géographiques (Hub Santé)](ValueSet-vs-coord-precision.md) | Niveau de précision des coordonnées géographiques d'un point. |
| [Rôles des opérateurs (Hub Santé)](ValueSet-vs-operator-role.md) | Rôles des professionnels de santé opérant au sein de l'entité émettrice d'un message Hub Santé. |
| [Sexe du patient (Hub Santé)](ValueSet-vs-sex.md) | Codes de sexe du patient. |
| [Source des identifiants de localisation externes (Hub Santé)](ValueSet-vs-external-location-id-source.md) | Types d'identifiants utilisés pour référencer une localisation externe. |
| [Source des identifiants externes patient (Hub Santé)](ValueSet-vs-external-id-source.md) | Types d'identifiants externes utilisés pour identifier un patient. |
| [Statut du dossier (Hub Santé)](ValueSet-vs-case-status.md) | Statut du dossier de régulation médicale. |
| [Type d'appelant (Hub Santé)](ValueSet-vs-caller-type.md) | Type ou qualité de l'appelant/requérant. |
| [Type d'information externe (Hub Santé)](ValueSet-vs-external-info-type.md) | Type de la ressource externe référencée pour la localisation. |
| [Type d'intervention (Hub Santé)](ValueSet-vs-intervention-type.md) | Type d'intervention : primaire ou secondaire. |
| [Type d'orientation (Hub Santé)](ValueSet-vs-orientation-type.md) | Type d'orientation décidé à l'issue de la régulation médicale. |
| [Type de contact (Hub Santé)](ValueSet-vs-contact-type.md) | Types d'URI utilisés pour les coordonnées de contact. |
| [Type de décision médicale (Hub Santé)](ValueSet-vs-decision-type.md) | Type de décision prise dans le cadre de la régulation médicale. |
| [Type de ressource mobilisée (Hub Santé)](ValueSet-vs-resource-type.md) | Type de ressource mobilisée dans le cadre de la décision de régulation médicale. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Attribution du dossier (Hub Santé)](CodeSystem-cs-case-attribution.md) | Attribution ou orientation du dossier de régulation médicale. |
| [Canal de contact (Hub Santé)](CodeSystem-cs-contact-channel.md) | Origine du canal établi pour le contact. |
| [Communication avec l'appelant (Hub Santé)](CodeSystem-cs-caller-communication.md) | Qualité ou contrainte de communication avec l'appelant. |
| [Filière de régulation (Hub Santé)](CodeSystem-cs-perimeter.md) | Filière du CRRA destinataire à laquelle le dossier doit être adressé. |
| [Niveau de soin du patient (Hub Santé)](CodeSystem-cs-patient-care-level.md) | Niveaux de soins spécifiques au patient dans le contexte de la régulation médicale. |
| [Origine de la qualification (Hub Santé)](CodeSystem-cs-qualification-origin.md) | Canal ou entité à l'origine de la création du dossier de régulation médicale. |
| [Priorité du dossier (Hub Santé)](CodeSystem-cs-case-priority.md) | Niveau de priorité du dossier de régulation médicale. |
| [Précision des coordonnées géographiques (Hub Santé)](CodeSystem-cs-coord-precision.md) | Niveau de précision des coordonnées géographiques d'un point. |
| [Rôles des opérateurs (Hub Santé)](CodeSystem-cs-operator-role.md) | Rôles des professionnels de santé opérant au sein de l'entité émettrice d'un message Hub Santé. |
| [Sexe du patient (Hub Santé)](CodeSystem-cs-sex.md) | Codes de sexe du patient. |
| [Source des identifiants de localisation externes (Hub Santé)](CodeSystem-cs-external-location-id-source.md) | Types d'identifiants utilisés pour référencer une localisation externe. |
| [Source des identifiants externes patient (Hub Santé)](CodeSystem-cs-external-id-source.md) | Types d'identifiants externes utilisés pour identifier un patient. |
| [Statut du dossier (Hub Santé)](CodeSystem-cs-case-status.md) | Statut du dossier de régulation médicale. |
| [Type d'appelant (Hub Santé)](CodeSystem-cs-caller-type.md) | Type ou qualité de l'appelant/requérant. |
| [Type d'information externe (Hub Santé)](CodeSystem-cs-external-info-type.md) | Type de la ressource externe référencée pour la localisation. |
| [Type d'intervention (Hub Santé)](CodeSystem-cs-intervention-type.md) | Type d'intervention : primaire (première intervention urgente) ou secondaire (ex. TIH). |
| [Type d'orientation (Hub Santé)](CodeSystem-cs-orientation-type.md) | Type d'orientation décidé à l'issue de la régulation médicale. |
| [Type de contact (Hub Santé)](CodeSystem-cs-contact-type.md) | Types d'URI utilisés pour les coordonnées de contact. |
| [Type de décision médicale (Hub Santé)](CodeSystem-cs-decision-type.md) | Type de décision prise dans le cadre de la régulation médicale. |
| [Type de ressource mobilisée (Hub Santé)](CodeSystem-cs-resource-type.md) | Type de ressource mobilisée dans le cadre de la décision de régulation médicale. |

