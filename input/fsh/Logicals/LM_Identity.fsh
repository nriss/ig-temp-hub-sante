Logical: LM_Identity
Id: lm-identity
Title: "Identité"
Description: "Identité du patient, combinant les traits stricts (INS) et les traits non stricts (nom usuel)."

* ^status = #draft

* strictFeatures 0..1 LM_InsStrictFeatures "Traits stricts" "Traits stricts de l'identité INS (nom de naissance, date de naissance, sexe)."

* nonStrictFeatures 0..1 LM_DetailedName "Traits non stricts" "Prénom et nom usuel du patient."
