Logical: InsStrictFeaturesLogical
Id: lm-ins-strict-features
Title: "Traits stricts de l'identité"
Description: "Traits stricts de l'identité du patient au sens de l'identité INS."

* ^status = #draft

* birthName 0..1 string "Nom de naissance" "Nom de naissance (nom de famille) du patient."

* birthDate 0..1 date "Date de naissance" "Date de naissance du patient."
  * ^comment = "Regexp : ^\\d{4}-\\d{2}-\\d{2}$"

* sex 0..1 code "Sexe" "Sexe du patient."
* sex from VSSex (required)
