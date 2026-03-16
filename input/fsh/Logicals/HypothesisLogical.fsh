Logical: HypothesisLogical
Id: lm-hypothesis
Title: "Hypothèses de régulation médicale"
Description: "Hypothèses diagnostiques principale et secondaires issues de la régulation médicale."

* ^status = #draft

* mainDiagnosis 0..1 MainDiagnosisLogical "Hypothèse principale" "Hypothèse diagnostique principale."

* otherDiagnosis 0..* OtherDiagnosisLogical "Hypothèses secondaires" "Hypothèses diagnostiques secondaires."
