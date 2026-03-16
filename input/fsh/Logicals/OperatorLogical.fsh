Logical: OperatorLogical
Id: lm-operator
Title: "Professionnel de santé réalisant l'observation"
Description: "Opérateur ayant effectué une observation médicale dans le contexte de la régulation médicale (RS-EDA)."

* ^status = #draft

* label 0..1 string "Label" "Nom/prénom ou identifiant de l'opérateur, selon les préférences de chaque partenaire."

* role 1..1 code "Rôle" "Rôle de l'opérateur au sein de l'entité émettrice du message."
* role from VSOperatorRole (required)
