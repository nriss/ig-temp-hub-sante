Logical: LM_Geometry
Id: lm-geometry
Title: "Géométrie"
Description: "Localisation géographique horodatée d'un point."

* ^status = #draft

* datetime 1..1 dateTime "Date/heure" "Date et heure de la prise de coordonnées (avec fuseau horaire)."

* point 0..1 LM_Point "Point" "Coordonnées géographiques du point."
