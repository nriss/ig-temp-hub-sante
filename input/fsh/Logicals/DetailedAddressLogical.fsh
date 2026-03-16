Logical: DetailedAddressLogical
Id: lm-detailed-address
Title: "Adresse détaillée"
Description: "Adresse structurée avec numéro, type de voie et informations complémentaires."

* ^status = #draft

* complete 1..1 string "Adresse complète" "Adresse complète sous forme textuelle."

* number 0..1 string "Numéro" "Numéro dans la voie."

* wayName 0..1 WayNameLogical "Nom de voie" "Nom structuré de la voie."

* highway 0..1 HighwayLogical "Voie routière" "Informations sur la voie routière (pour les interventions sur route)."
