Logical: ExternalLocationIdLogical
Id: lm-external-location-id
Title: "Identifiant de localisation externe"
Description: "Identifiant externe référençant une localisation (établissement de santé, entreprise…)."

* ^status = #draft

* source 1..1 code "Source" "Type de l'identifiant fourni."
* source from VSExternalLocationIdSource (required)

* value 1..1 string "Valeur" "Valeur de l'identifiant."
  * ^comment = "Regexp : ^([0-9A-Z]{2}0\\d{5}\\d|\\d{9}|\\d{14}|\\d{4}[A-Za-z])$"
