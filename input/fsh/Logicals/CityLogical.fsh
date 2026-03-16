Logical: CityLogical
Id: lm-city
Title: "Commune"
Description: "Commune de la localisation."

* ^status = #draft

* name 0..1 string "Nom de la commune" "Nom de la commune."

* inseeCode 0..1 string "Code INSEE" "Code INSEE de la commune."
  * ^comment = "Regexp : ^[0-9]{5}$"
