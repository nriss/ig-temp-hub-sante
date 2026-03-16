Logical: HealthMotiveLogical
Id: lm-health-motive
Title: "Motif de santé"
Description: "Code et libellé décrivant le motif de santé de l'appel (nomenclature SAMU)."

* ^status = #draft

* code 1..1 string "Code" "Code de la nomenclature associée."
  * ^comment = "Regexp : ^M\\d{2}\\.\\d{2}(\\.\\d{2})?$"

* label 1..1 string "Libellé" "Libellé de la nomenclature associée."
