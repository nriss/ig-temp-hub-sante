Logical: WayNameLogical
Id: lm-way-name
Title: "Nom de voie"
Description: "Nom complet d'une voie (rue, avenue, boulevard…)."

* ^status = #draft

* complete 1..1 string "Nom complet" "Nom complet de la voie."

* type 0..1 string "Type de voie" "Type de voie (rue, avenue, boulevard…)."

* name 0..1 string "Nom" "Nom propre de la voie (sans le type)."
