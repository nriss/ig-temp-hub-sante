Logical: DecisionLogical
Id: lm-decision
Title: "Décision médicale"
Description: "Décision de régulation médicale prise par l'opérateur pour un dossier donné."

* ^status = #draft

* creation 1..1 dateTime "Date/heure de la décision" "Date et heure de la décision (avec fuseau horaire)."

* operator 1..1 OperatorLogical "Opérateur" "Professionnel de santé ayant pris la décision."

* decisionType 1..1 code "Type de décision" "Type de décision médicale."
* decisionType from VSDecisionType (required)

* patientId 0..1 string "ID patient" "Identifiant partagé du patient concerné par la décision."
  * ^comment = "Regexp : ^([a-zA-Z0-9_-]+\\.){3,8}patient(\\.[a-zA-Z0-9_-]+){1,2}$"

* resourceType 0..1 code "Type de ressource" "Type de ressource mobilisée."
* resourceType from VSResourceType (required)

* medicalTransport 0..1 boolean "Transport médicalisé" "Indique si un transport médicalisé est requis."

* orientationType 0..1 code "Type d'orientation" "Type d'orientation du patient."
* orientationType from VSOrientationType (required)

* destination 0..1 DestinationLogical "Destination" "Établissement de destination du patient."
