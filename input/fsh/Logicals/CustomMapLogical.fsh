Logical: CustomMapLogical
Id: lm-custom-map
Title: "Champ personnalisé"
Description: "Entrée de type clé/valeur permettant de transporter des informations complémentaires non structurées (max. 3 entrées)."

* ^status = #draft

* key 1..1 string "Clé" "Identifiant de la donnée personnalisée."

* label 0..1 string "Libellé" "Libellé lisible de la clé."

* value 1..1 string "Valeur" "Valeur associée à la clé."

* freetext 0..1 string "Texte libre" "Commentaire libre associé à l'entrée."
