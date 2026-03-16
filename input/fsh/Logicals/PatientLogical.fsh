Logical: PatientLogical
Id: lm-patient
Title: "Patient"
Description: "Patient pris en charge dans le cadre d'un dossier de régulation médicale (RS-EDA)."

* ^status = #draft

* patientId 1..1 string "ID patient partagé" "Identifiant partagé du patient, généré par le système partenaire. Format : {OrgId}.patient.{uniqueId} ou {ID}.{senderCaseId}.patient.{ordre}."
  * ^comment = "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}patient(\\.[a-zA-Z0-9_-]+){1,2}$"

* administrativeFile 0..1 AdministrativeFileLogical "Dossier administratif" "Dossier administratif du patient (identifiants externes, médecin traitant)."

* identity 0..1 IdentityLogical "Identité" "Identité du patient (traits stricts INS et traits non stricts)."

* detail 0..1 PatientDetailLogical "Informations patient" "Informations cliniques et physiologiques du patient."

* hypothesis 0..1 HypothesisLogical "Hypothèses de régulation médicale" "Hypothèses diagnostiques issues de la régulation médicale."
