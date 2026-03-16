Logical: MainDiagnosisLogical
Id: lm-main-diagnosis
Title: "Hypothèse de régulation médicale principale"
Description: "Hypothèse diagnostique principale issue de la régulation médicale."

* ^status = #draft

* code 1..1 string "Code" "Code de la nomenclature associée (CIM-10)."
  * ^comment = "Regexp : ^[A-Z]\\d{2}(\\.[\\d\\+\\-]{1,3})?$"

* label 1..1 string "Libellé" "Libellé de la nomenclature associée. Obligatoire pour permettre l'affichage même si le code n'est pas reconnu."
