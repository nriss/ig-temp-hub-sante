Logical: QualificationLogical
Id: lm-qualification
Title: "Qualification du dossier"
Description: "Qualification médicale et opérationnelle du dossier de régulation médicale."

* ^status = #draft

* origin 0..1 code "Origine" "Canal ou entité à l'origine de la création du dossier."
* origin from VSQualificationOrigin (required)

* riskThreat 0..* RiskThreatLogical "Risques et menaces" "Risques ou menaces identifiés associés au dossier."

* whatsHappen 0..1 WhatsHappenLogical "Nature du problème" "Code et libellé décrivant la nature de l'événement."

* locationKind 0..1 LocationKindLogical "Type de lieu" "Code et libellé décrivant le type de lieu de l'intervention."

* healthMotive 0..1 HealthMotiveLogical "Motif de santé" "Code et libellé décrivant le motif de santé de l'appel."

* details 0..1 CaseDetailsLogical "Détails du dossier" "Informations complémentaires de qualification (statut, attribution, priorité, niveau de soin)."
