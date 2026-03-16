Logical: GeometryLogical
Id: lm-geometry
Title: "Géométrie"
Description: "Localisation géographique horodatée d'un point."

* ^status = #draft

* datetime 1..1 dateTime "Date/heure" "Date et heure de la prise de coordonnées (avec fuseau horaire)."

* point 0..1 PointLogical "Point" "Coordonnées géographiques du point."
