Logical: ContactLogical
Id: lm-contact
Title: "Contact"
Description: "Coordonnées de contact avec canal, type et valeur (utilisé pour l'appelant)."

* ^status = #draft

* channel 1..1 code "Canal" "Origine du canal établi."
* channel from VSContactChannel (required)

* type 1..1 code "Type de contact" "Type de l'URI utilisée."
* type from VSContactType (required)

* detail 1..1 string "URI du contact" "Valeur de l'URI. Format téléphone : +{indicatif pays}{numéro}."
