Logical: RiskThreatLogical
Id: lm-risk-threat
Title: "Risque et menace"
Description: "Code et libellé décrivant un risque ou une menace associé au dossier (nomenclature SAMU)."

* ^status = #draft

* code 1..1 string "Code" "Code de la nomenclature associée."
  * ^comment = "Regexp : ^R\\d{2}$"

* label 1..1 string "Libellé" "Libellé de la nomenclature associée."
