Logical: AccessLogical
Id: lm-access
Title: "Accès"
Description: "Informations d'accès à une localisation (bâtiment, étage, digicode…)."

* ^status = #draft

* floor 0..1 string "Étage" "Numéro ou description de l'étage."

* roomNumber 0..1 string "Numéro de chambre" "Numéro de chambre ou d'appartement."

* interphone 0..1 string "Interphone" "Numéro ou code de l'interphone."

* accessCode 0..* string "Code d'accès" "Code(s) d'accès (digicode, badge…)."

* elevator 0..1 string "Ascenseur" "Indication sur l'ascenseur."

* buildingName 0..1 string "Nom du bâtiment" "Nom ou lettre du bâtiment."

* entrance 0..1 string "Entrée" "Numéro ou description de l'entrée."

* entity 0..1 string "Entité" "Entité ou service au sein du bâtiment."

* phoneNumber 0..1 string "Numéro de téléphone" "Numéro de téléphone du lieu. Format : +{indicatif}{numéro}."
  * ^comment = "Regexp : ^\\+\\d{5,18}$"
