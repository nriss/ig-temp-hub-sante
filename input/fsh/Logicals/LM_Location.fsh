Logical: LM_Location
Id: lm-location
Title: "Localisation"
Description: "Localisation de l'intervention, incluant l'adresse, la commune, l'accès, les coordonnées géographiques et les références externes."

* ^status = #draft

* name 0..1 string "Nom du lieu" "Nom du lieu ou de l'établissement."

* externalLocationId 0..* LM_ExternalLocationId "Identifiant(s) externe(s)" "Identifiant(s) externe(s) référençant la localisation."

* detailedAddress 0..1 LM_DetailedAddress "Adresse détaillée" "Adresse structurée."

* city 0..1 LM_City "Commune" "Commune de la localisation."

* access 0..1 LM_Access "Accès" "Informations d'accès (bâtiment, étage, digicode…)."

* geometry 0..1 LM_Geometry "Géométrie" "Coordonnées géographiques horodatées."

* externalInfo 0..* LM_ExternalInfo "Information(s) externe(s)" "Références vers des ressources externes (photo, carte, site web…)."

* freetext 0..1 string "Texte libre" "Description libre de la localisation."
