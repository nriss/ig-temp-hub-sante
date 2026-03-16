Logical: CaseDetailsLogical
Id: lm-case-details
Title: "Détails du dossier"
Description: "Informations complémentaires de qualification du dossier de régulation médicale."

* ^status = #draft

* status 0..1 code "Statut" "Statut du dossier."
* status from VSCaseStatus (required)

* attribution 0..1 code "Attribution" "Attribution ou orientation du dossier."
* attribution from VSCaseAttribution (required)

* priority 0..1 code "Priorité" "Niveau de priorité du dossier."
* priority from VSCasePriority (required)

* careLevel 0..1 code "Niveau de soin" "Niveau de soins global du dossier."
* careLevel from VSPatientCareLevel (required)
