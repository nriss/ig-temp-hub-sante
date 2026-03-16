Logical: HighwayLogical
Id: lm-highway
Title: "Voie routière"
Description: "Informations relatives à une voie routière (autoroute, route nationale…)."

* ^status = #draft

* name 0..1 string "Nom de la voie" "Nom de la voie routière."

* pk 0..1 string "Point kilométrique" "Point kilométrique sur la voie routière."

* direction 0..1 string "Direction" "Direction sur la voie routière."
