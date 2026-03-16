Logical: ExternalInfoLogical
Id: lm-external-info
Title: "Information externe"
Description: "Référence vers une ressource externe apportant des informations complémentaires sur la localisation."

* ^status = #draft

* uri 1..1 url "URI" "URI de la ressource externe."

* type 0..1 code "Type" "Type de la ressource externe."
* type from VSExternalInfoType (required)

* freetext 0..1 string "Texte libre" "Description libre de la ressource externe."
