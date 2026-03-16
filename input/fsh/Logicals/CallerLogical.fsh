Logical: CallerLogical
Id: lm-caller
Title: "Appelant"
Description: "Personne à l'origine de l'appel au SAMU, avec ses coordonnées et ses caractéristiques de communication."

* ^status = #draft

* callerContact 1..1 ContactLogical "Contact appelant" "Coordonnées de l'appelant (canal, type, URI)."

* callbackContact 0..1 ContactLogical "Contact de rappel" "Coordonnées de rappel si différentes du contact appelant."

* detailedName 0..1 DetailedNameLogical "Nom de l'appelant" "Prénom et nom de l'appelant."

* type 0..1 code "Type d'appelant" "Qualité ou type de l'appelant."
* type from VSCallerType (required)

* language 0..1 code "Langue" "Langue parlée par l'appelant (code BCP-47)."
* language from http://hl7.org/fhir/ValueSet/languages (preferred)

* communication 0..1 code "Communication" "Qualité ou contrainte de communication avec l'appelant."
* communication from VSCallerCommunication (required)

* freetext 0..1 string "Texte libre" "Informations complémentaires libres sur l'appelant."
