Logical: LM_Alert
Id: lm-alert
Title: "Alerte initiale"
Description: "Alerte initiale reçue par le SAMU, avec la réception, l'appelant et les notes associées."

* ^status = #draft

* reception 1..1 dateTime "Date/heure de réception" "Date et heure de réception de l'appel (avec fuseau horaire)."

* caller 1..1 LM_Caller "Appelant" "Personne à l'origine de l'appel."

* notes 0..* LM_Notes "Notes" "Notes horodatées associées à l'alerte."
