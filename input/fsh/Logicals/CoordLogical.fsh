Logical: CoordLogical
Id: lm-coord
Title: "Coordonnées géographiques"
Description: "Coordonnées géographiques d'un point (latitude, longitude, altitude, précision)."

* ^status = #draft

* lat 1..1 decimal "Latitude" "Latitude en degrés décimaux (WGS84)."

* lon 1..1 decimal "Longitude" "Longitude en degrés décimaux (WGS84)."

* precision 1..1 code "Précision" "Niveau de précision des coordonnées."
* precision from VSCoordPrecision (required)

* height 0..1 decimal "Altitude" "Altitude en mètres."
