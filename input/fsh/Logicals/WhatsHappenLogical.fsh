Logical: WhatsHappenLogical
Id: lm-whats-happen
Title: "Nature du problème"
Description: "Code et libellé décrivant la nature de l'événement déclenchant l'appel (nomenclature SAMU)."

* ^status = #draft

* code 1..1 string "Code" "Code de la nomenclature associée."
  * ^comment = "Regexp : ^C\\d{2}(\\.\\d{2}){2}$"

* label 1..1 string "Libellé" "Libellé de la nomenclature associée."
