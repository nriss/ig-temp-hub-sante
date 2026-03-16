Logical: CreateCaseHealthLogical
Id: lm-create-case-health
Title: "Dossier de régulation médicale (RS-EDA)"
Description: "Objet racine du message RS-EDA : dossier de régulation médicale transmis entre partenaires du Hub Santé."

* ^status = #draft

* caseId 1..1 string "Identifiant affaire/dossier" "Identifiant partagé du dossier, généré par le système créateur. Format : {pays}.{domaine}.{organisation}.{senderCaseId}."
  * ^comment = "Regexp : ^([a-zA-Z0-9_-]+\\.?){4,10}$"

* senderCaseId 0..1 string "Identifiant local du dossier" "Numéro du dossier dans le SI de l'émetteur."

* creation 1..1 dateTime "Date/heure de création" "Date et heure de création du dossier (avec fuseau horaire, sans indicateur Z)."
  * ^comment = "Regexp : ^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}[\\-+]\\d{2}:\\d{2}$"

* perimeter 0..1 code "Filière" "Filière du CRRA destinataire à laquelle le dossier doit être adressé."
* perimeter from VSPerimeter (required)

* interventionType 0..1 code "Type d'intervention" "Type d'intervention : primaire ou secondaire."
* interventionType from VSInterventionType (required)

* qualification 1..1 QualificationLogical "Qualification" "Qualification médicale et opérationnelle du dossier."

* location 1..1 LocationLogical "Localisation" "Localisation de l'intervention."

* initialAlert 0..1 AlertLogical "Alerte initiale" "Alerte initiale reçue par le SAMU."

* owner 1..1 string "CRRA traitant" "Identifiant du CRRA prenant en charge le dossier."
  * ^comment = "Regexp : ^([a-zA-Z0-9_-]+\\.?){4,9}$"

* patient 0..* PatientLogical "Patient(s)" "Patient(s) concerné(s) par le dossier."

* medicalNote 0..* MedicalNoteLogical "Observation(s) médicale(s)" "Observations médicales associées au dossier."

* decision 0..* DecisionLogical "Décision(s)" "Décisions de régulation médicale prises pour le dossier."

* additionalInformation 0..1 AdditionalInformationLogical "Informations complémentaires" "Données complémentaires non structurées (max. 3 entrées clé/valeur)."
