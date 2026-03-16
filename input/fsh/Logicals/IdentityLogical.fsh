Logical: IdentityLogical
Id: lm-identity
Title: "Identité"
Description: "Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel)."

* ^status = #draft

* strictFeatures 0..1 InsStrictFeaturesLogical "Traits stricts" "Traits stricts de l'identité INS (nom de naissance, date de naissance, sexe)."

* nonStrictFeatures 0..1 DetailedNameLogical "Traits non stricts" "Prénom et nom usuel du patient."
