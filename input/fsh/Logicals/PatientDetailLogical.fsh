Logical: PatientDetailLogical
Id: lm-patient-detail
Title: "Informations patient"
Description: "Informations cliniques et physiologiques du patient."

* ^status = #draft

* weight 0..1 decimal "Poids (kg)" "Poids du patient en kilogrammes."

* height 0..1 decimal "Taille (cm)" "Taille du patient en centimètres."

* age 0..1 string "Âge" "Âge du patient au format durée ISO 8601 (ex : P30Y, P6M, P2W). Une seule unité de durée utilisée (années, mois, semaines ou jours)."
  * ^comment = "Regexp : ^P[0-9]{1,3}[YMWD]$"

* careLevel 0..1 code "Niveau de soin" "Niveau de soins spécifique au patient."
* careLevel from VSPatientCareLevel (required)

* medicalHistory 0..1 string "Antécédents" "Antécédents du patient (texte libre)."

* treatment 0..1 string "Traitements" "Traitements du patient (texte libre)."
