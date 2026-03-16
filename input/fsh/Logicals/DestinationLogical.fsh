Logical: DestinationLogical
Id: lm-destination
Title: "Destination"
Description: "Destination du patient à l'issue de la décision de régulation médicale."

* ^status = #draft

* externalLocationId 0..* ExternalLocationIdLogical "Identifiant de localisation" "Identifiant(s) externe(s) de l'établissement de destination."

* freetext 0..1 string "Texte libre" "Description libre de la destination."
