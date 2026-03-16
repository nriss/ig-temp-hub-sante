Logical: GeneralPractitionerLogical
Id: lm-general-practitioner
Title: "Médecin traitant"
Description: "Médecin traitant du patient."

* ^status = #draft

* detailedName 1..1 DetailedNameLogical "Prénom et nom" "Identité nominative du médecin traitant."

* rppsId 0..1 string "Identifiant RPPS" "Numéro RPPS du médecin traitant."

* contact 0..* PersonalContactLogical "Contact" "Coordonnées du médecin traitant."
