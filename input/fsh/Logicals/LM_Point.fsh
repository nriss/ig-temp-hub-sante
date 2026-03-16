Logical: LM_Point
Id: lm-point
Title: "Point géographique"
Description: "Point géographique avec ses coordonnées et une indication sur la provenance AML."

* ^status = #draft

* coord 1..1 LM_Coord "Coordonnées" "Coordonnées géographiques du point."

* isAml 0..1 boolean "Est AML" "Indique si les coordonnées proviennent de l'Advanced Mobile Location (AML)."
