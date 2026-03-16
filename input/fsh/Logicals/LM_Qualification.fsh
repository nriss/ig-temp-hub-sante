Logical: LM_Qualification
Id: lm-qualification
Title: "Qualification du dossier"
Description: "Qualification médicale et opérationnelle du dossier de régulation médicale."

* ^status = #draft

* origin 0..1 code "Origine" "Canal ou entité à l'origine de la création du dossier."
* origin from VS_QualificationOrigin (required)

* riskThreat 0..* LM_RiskThreat "Risques et menaces" "Risques ou menaces identifiés associés au dossier."

* whatsHappen 0..1 LM_WhatsHappen "Nature du problème" "Code et libellé décrivant la nature de l'événement."

* locationKind 0..1 LM_LocationKind "Type de lieu" "Code et libellé décrivant le type de lieu de l'intervention."

* healthMotive 0..1 LM_HealthMotive "Motif de santé" "Code et libellé décrivant le motif de santé de l'appel."

* details 0..1 LM_CaseDetails "Détails du dossier" "Informations complémentaires de qualification (statut, attribution, priorité, niveau de soin)."
