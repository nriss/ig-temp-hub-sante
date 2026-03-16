Logical: LM_PersonalContact
Id: lm-personal-contact
Title: "Contact personnel"
Description: "Coordonnées de contact d'une personne (utilisé notamment pour le médecin traitant)."

* ^status = #draft

* type 1..1 code "Type de contact" "Type de l'URI utilisée."
* type from VS_ContactType (required)

* detail 1..1 string "URI du contact" "Valeur de l'URI utilisée. Format téléphone : +{indicatif pays}{numéro}."
