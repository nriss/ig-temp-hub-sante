Logical: LM_Hypothesis
Id: lm-hypothesis
Title: "Hypothèses de régulation médicale"
Description: "Hypothèses diagnostiques principale et secondaires issues de la régulation médicale."

* ^status = #draft

* mainDiagnosis 0..1 LM_MainDiagnosis "Hypothèse principale" "Hypothèse diagnostique principale."

* otherDiagnosis 0..* LM_OtherDiagnosis "Hypothèses secondaires" "Hypothèses diagnostiques secondaires."
