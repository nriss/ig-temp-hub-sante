Logical: LocationKindLogical
Id: lm-location-kind
Title: "Type de lieu"
Description: "Code et libellé décrivant le type de lieu de l'intervention (nomenclature SAMU)."

* ^status = #draft

* code 1..1 string "Code" "Code de la nomenclature associée."
  * ^comment = "Regexp : ^L\\d{2}(\\.\\d{2}){2}$"

* label 1..1 string "Libellé" "Libellé de la nomenclature associée."
