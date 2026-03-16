Logical: DetailedNameLogical
Id: lm-detailed-name
Title: "Prénom & nom usuel"
Description: "Prénom et nom usuel d'une personne. Objet transverse utilisé dans plusieurs contextes (appelant, médecin traitant, identité patient)."

* ^status = #draft

* complete 1..1 string "Prénom et nom" "Prénom et nom usuel. Si firstName et lastName sont renseignés, format : \"{firstName} {lastName}\". Spécificités 15-18 : NexSIS ne fournit que ce champ concaténé."

* lastName 0..1 string "Nom" "Nom usuel."

* firstName 0..1 string "Prénom" "Prénom usuel. Les prénoms composés sont séparés par \"-\"."
