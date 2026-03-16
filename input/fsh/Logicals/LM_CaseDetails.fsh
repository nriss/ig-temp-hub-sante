Logical: LM_CaseDetails
Id: lm-case-details
Title: "Détails du dossier"
Description: "Informations complémentaires de qualification du dossier de régulation médicale."

* ^status = #draft

* status 0..1 code "Statut" "Statut du dossier."
* status from VS_CaseStatus (required)

* attribution 0..1 code "Attribution" "Attribution ou orientation du dossier."
* attribution from VS_CaseAttribution (required)

* priority 0..1 code "Priorité" "Niveau de priorité du dossier."
* priority from VS_CasePriority (required)

* careLevel 0..1 code "Niveau de soin" "Niveau de soins global du dossier."
* careLevel from VS_PatientCareLevel (required)
