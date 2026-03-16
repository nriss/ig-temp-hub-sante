Logical: MedicalNoteLogical
Id: lm-medical-note
Title: "Observation médicale"
Description: "Observation médicale réalisée par un professionnel de santé dans le contexte de la régulation médicale (RS-EDA)."

* ^status = #draft

* patientId 0..1 string "ID patient partagé" "Identifiant partagé du patient. Pattern : {OrgId}.patient.{uniqueId}"
  * ^comment = "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}patient(\\.[a-zA-Z0-9_-]+){1,2}$"

* operator 1..1 OperatorLogical "Professionnel de santé réalisant l'observation" "Opérateur ayant effectué l'observation médicale."

* medicalNoteId 1..1 string "ID Observation" "Identifiant unique de l'observation médicale, généré par le système partenaire."
  * ^comment = "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}medicalNote(\\.[a-zA-Z0-9_-]+){1,2}$"

* creation 0..1 dateTime "Date/heure de l'observation" "Date et heure de création de l'observation médicale (avec fuseau horaire, sans indicateur Z)."

* freetext 1..1 string "Observations et commentaires" "Champ libre pour les informations médicales et commentaires."
