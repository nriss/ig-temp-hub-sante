Logical: LM_AdministrativeFile
Id: lm-administrative-file
Title: "Dossier administratif"
Description: "Dossier administratif du patient, contenant ses identifiants externes et son médecin traitant."

* ^status = #draft

* externalId 0..* LM_ExternalId "Identifiants externes" "Identifiants patient provenant de systèmes externes (NIR, SINUS, dossard…)."

* generalPractitioner 0..1 LM_GeneralPractitioner "Médecin traitant" "Médecin traitant du patient."
