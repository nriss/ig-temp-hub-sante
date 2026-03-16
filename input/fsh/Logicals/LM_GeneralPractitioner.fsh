Logical: LM_GeneralPractitioner
Id: lm-general-practitioner
Title: "Médecin traitant"
Description: "Médecin traitant du patient."

* ^status = #draft

* detailedName 1..1 LM_DetailedName "Prénom et nom" "Identité nominative du médecin traitant."

* rppsId 0..1 string "Identifiant RPPS" "Numéro RPPS du médecin traitant."

* contact 0..* LM_PersonalContact "Contact" "Coordonnées du médecin traitant."
