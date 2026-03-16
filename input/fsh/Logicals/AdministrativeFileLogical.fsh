Logical: AdministrativeFileLogical
Id: lm-administrative-file
Title: "Dossier administratif"
Description: "Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant."

* ^status = #draft

* externalId 0..* ExternalIdLogical "Identifiants externes" "Identifiants patient provenant de systèmes externes (NIR, SINUS, dossard…)."

* generalPractitioner 0..1 GeneralPractitionerLogical "Médecin traitant" "Médecin traitant du patient."
