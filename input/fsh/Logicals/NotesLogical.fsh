Logical: NotesLogical
Id: lm-notes
Title: "Note"
Description: "Note horodatée associée à l'alerte initiale."

* ^status = #draft

* creation 0..1 dateTime "Date/heure de création" "Date et heure de création de la note."

* freetext 0..1 string "Texte libre" "Contenu de la note."
