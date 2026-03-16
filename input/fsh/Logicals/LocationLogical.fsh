Logical: LocationLogical
Id: lm-location
Title: "Localisation"
Description: "Localisation de l'intervention, incluant l'adresse, la commune, l'accès, les coordonnées géographiques et les références externes."

* ^status = #draft

* name 0..1 string "Nom du lieu" "Nom du lieu ou de l'établissement."

* externalLocationId 0..* ExternalLocationIdLogical "Identifiant(s) externe(s)" "Identifiant(s) externe(s) référençant la localisation."

* detailedAddress 0..1 DetailedAddressLogical "Adresse détaillée" "Adresse structurée."

* city 0..1 CityLogical "Commune" "Commune de la localisation."

* access 0..1 AccessLogical "Accès" "Informations d'accès (bâtiment, étage, digicode…)."

* geometry 0..1 GeometryLogical "Géométrie" "Coordonnées géographiques horodatées."

* externalInfo 0..* ExternalInfoLogical "Information(s) externe(s)" "Références vers des ressources externes (photo, carte, site web…)."

* freetext 0..1 string "Texte libre" "Description libre de la localisation."
