Logical: ExternalIdLogical
Id: lm-external-id
Title: "Identifiant(s) patient(s)"
Description: "Identifiant patient provenant d'un système externe."

* ^status = #draft

* source 1..1 code "Source / type d'identifiant" "Type de l'identifiant fourni."
* source from VSExternalIdSource (required)

* value 1..1 string "Identifiant" "Valeur de l'identifiant."
