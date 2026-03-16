# Avancement — Modèles logiques FSH (RS-EDA)

**Source** : schéma JSON [RS-EDA](https://github.com/ansforge/SAMU-Hub-Modeles/blob/main/src/main/resources/json-schema/RS-EDA.schema.json)

---

## Conventions adoptées

- Les objets réutilisables (`definitions/`) → **LogicalModels séparés**, pas BackboneElement inline.
- Les enums JSON → **CodeSystem + ValueSet** dédiés.
- Nommage (conforme bonnes pratiques ANS) :
  - LogicalModels : FSH name `XxxLogical` (PascalCase), fichier `XxxLogical.fsh`
  - CodeSystems : FSH name `CSXxx` (PascalCase), fichier `CSXxx.fsh`
  - ValueSets : FSH name `VSXxx` (PascalCase), fichier `VSXxx.fsh`
  - Ids : kebab-case (`lm-xxx`, `cs-xxx`, `vs-xxx`)
- Les codes avec caractères spéciaux (`.`, `-`) sont entourés de backticks dans les CodeSystems FSH.
- `caller.language` est lié au ValueSet FHIR standard `http://hl7.org/fhir/ValueSet/languages` (BCP-47).
- `caseDetails.careLevel` réutilise `VSPatientCareLevel` (mêmes valeurs R1–R4).
- `* ^status = #draft` présent sur tous les artefacts (LogicalModels, CodeSystems, ValueSets).

---

## Fichiers créés

### LogicalModels (`input/fsh/Logicals/`)

| Fichier | Objet schéma | Statut |
|---|---|---|
| `CreateCaseHealthLogical.fsh` | Racine RS-EDA | ✅ |
| `QualificationLogical.fsh` | `definitions/qualification` | ✅ |
| `CaseDetailsLogical.fsh` | `definitions/caseDetails` | ✅ |
| `WhatsHappenLogical.fsh` | `definitions/whatsHappen` | ✅ |
| `LocationKindLogical.fsh` | `definitions/locationKind` | ✅ |
| `HealthMotiveLogical.fsh` | `definitions/healthMotive` | ✅ |
| `RiskThreatLogical.fsh` | `definitions/riskThreat` | ✅ |
| `LocationLogical.fsh` | `definitions/location` | ✅ |
| `DetailedAddressLogical.fsh` | `definitions/detailedAddress` | ✅ |
| `HighwayLogical.fsh` | `definitions/highway` | ✅ |
| `WayNameLogical.fsh` | `definitions/wayName` | ✅ |
| `CityLogical.fsh` | `definitions/city` | ✅ |
| `AccessLogical.fsh` | `definitions/access` | ✅ |
| `GeometryLogical.fsh` | `definitions/geometry` | ✅ |
| `PointLogical.fsh` | `definitions/point` | ✅ |
| `CoordLogical.fsh` | `definitions/coord` | ✅ |
| `ExternalInfoLogical.fsh` | `definitions/externalInfo` | ✅ |
| `ExternalLocationIdLogical.fsh` | `definitions/externalLocationId` | ✅ |
| `AlertLogical.fsh` | `definitions/alert` | ✅ |
| `NotesLogical.fsh` | `definitions/notes` | ✅ |
| `CallerLogical.fsh` | `definitions/caller` | ✅ |
| `ContactLogical.fsh` | `definitions/contact` | ✅ |
| `DetailedNameLogical.fsh` | `definitions/detailedName` (transverse) | ✅ |
| `PatientLogical.fsh` | `definitions/patient` | ✅ |
| `AdministrativeFileLogical.fsh` | `definitions/administrativeFile` | ✅ |
| `ExternalIdLogical.fsh` | `definitions/externalId` | ✅ |
| `GeneralPractitionerLogical.fsh` | `definitions/generalPractitioner` | ✅ |
| `PersonalContactLogical.fsh` | `definitions/personalContact` | ✅ |
| `IdentityLogical.fsh` | `definitions/Identity` | ✅ |
| `InsStrictFeaturesLogical.fsh` | `definitions/insStrictFeatures` | ✅ |
| `PatientDetailLogical.fsh` | `definitions/patientDetail` | ✅ |
| `HypothesisLogical.fsh` | `definitions/hypothesis` | ✅ |
| `MainDiagnosisLogical.fsh` | `definitions/mainDiagnosis` | ✅ |
| `OtherDiagnosisLogical.fsh` | `definitions/otherDiagnosis` | ✅ |
| `MedicalNoteLogical.fsh` | `definitions/medicalNote` | ✅ |
| `OperatorLogical.fsh` | `definitions/operator` | ✅ |
| `DecisionLogical.fsh` | `definitions/decision` | ✅ |
| `DestinationLogical.fsh` | `definitions/destination` | ✅ |
| `AdditionalInformationLogical.fsh` | `definitions/additionalInformation` | ✅ |
| `CustomMapLogical.fsh` | `definitions/customMap` | ✅ |

### CodeSystems (`input/fsh/CodeSystems/`)

| Fichier | Enum source | Statut |
|---|---|---|
| `CSOperatorRole.fsh` | `operator.role` | ✅ |
| `CSExternalIdSource.fsh` | `externalId.source` | ✅ |
| `CSSex.fsh` | `insStrictFeatures.sex` | ✅ |
| `CSPatientCareLevel.fsh` | `patientDetail.careLevel` (réutilisé pour `caseDetails.careLevel`) | ✅ |
| `CSContactType.fsh` | `contact.type` / `personalContact.type` | ✅ |
| `CSQualificationOrigin.fsh` | `qualification.origin` | ✅ |
| `CSCaseStatus.fsh` | `caseDetails.status` | ✅ |
| `CSCasePriority.fsh` | `caseDetails.priority` | ✅ |
| `CSCaseAttribution.fsh` | `caseDetails.attribution` | ✅ |
| `CSCoordPrecision.fsh` | `coord.precision` | ✅ |
| `CSExternalLocationIdSource.fsh` | `externalLocationId.source` | ✅ |
| `CSExternalInfoType.fsh` | `externalInfo.type` | ✅ |
| `CSDecisionType.fsh` | `decision.decisionType` | ✅ |
| `CSOrientationType.fsh` | `decision.orientationType` | ✅ |
| `CSPerimeter.fsh` | `perimeter` (racine) | ✅ |
| `CSInterventionType.fsh` | `interventionType` (racine) | ✅ |
| `CSContactChannel.fsh` | `contact.channel` | ✅ |
| `CSCallerType.fsh` | `caller.type` | ✅ |
| `CSCallerCommunication.fsh` | `caller.communication` | ✅ |
| `CSResourceType.fsh` | `decision.resourceType` | ✅ |

### ValueSets (`input/fsh/ValueSets/`)

| Fichier | Statut |
|---|---|
| `VSOperatorRole.fsh` | ✅ |
| `VSExternalIdSource.fsh` | ✅ |
| `VSSex.fsh` | ✅ |
| `VSPatientCareLevel.fsh` | ✅ |
| `VSContactType.fsh` | ✅ |
| `VSQualificationOrigin.fsh` | ✅ |
| `VSCaseStatus.fsh` | ✅ |
| `VSCasePriority.fsh` | ✅ |
| `VSCaseAttribution.fsh` | ✅ |
| `VSCoordPrecision.fsh` | ✅ |
| `VSExternalLocationIdSource.fsh` | ✅ |
| `VSExternalInfoType.fsh` | ✅ |
| `VSDecisionType.fsh` | ✅ |
| `VSOrientationType.fsh` | ✅ |
| `VSPerimeter.fsh` | ✅ |
| `VSInterventionType.fsh` | ✅ |
| `VSContactChannel.fsh` | ✅ |
| `VSCallerType.fsh` | ✅ |
| `VSCallerCommunication.fsh` | ✅ |
| `VSResourceType.fsh` | ✅ |

---

## Graphe de dépendances

```
CreateCaseHealthLogical (racine RS-EDA)
├── QualificationLogical
│   ├── WhatsHappenLogical
│   ├── LocationKindLogical
│   ├── HealthMotiveLogical
│   ├── CaseDetailsLogical
│   └── RiskThreatLogical[]
├── LocationLogical
│   ├── DetailedAddressLogical
│   │   ├── HighwayLogical
│   │   └── WayNameLogical
│   ├── CityLogical
│   ├── AccessLogical
│   ├── ExternalInfoLogical[]
│   ├── ExternalLocationIdLogical[]
│   └── GeometryLogical
│       └── PointLogical
│           └── CoordLogical
├── AlertLogical
│   ├── CallerLogical
│   │   ├── ContactLogical (callerContact)
│   │   ├── ContactLogical (callbackContact)
│   │   └── DetailedNameLogical
│   └── NotesLogical[]
├── PatientLogical[]
│   ├── AdministrativeFileLogical
│   │   ├── ExternalIdLogical[]
│   │   └── GeneralPractitionerLogical
│   │       ├── DetailedNameLogical
│   │       └── PersonalContactLogical[]
│   ├── IdentityLogical
│   │   ├── InsStrictFeaturesLogical
│   │   └── DetailedNameLogical
│   ├── PatientDetailLogical
│   └── HypothesisLogical
│       ├── MainDiagnosisLogical
│       └── OtherDiagnosisLogical[]
├── MedicalNoteLogical[]
│   └── OperatorLogical
├── DecisionLogical[]
│   ├── OperatorLogical
│   └── DestinationLogical
│       └── ExternalLocationIdLogical[]
└── AdditionalInformationLogical
    └── CustomMapLogical[] (max 3)
```

---

## Comptage

| Catégorie | Fait |
|---|---|
| LogicalModels | 40 / 40 ✅ |
| CodeSystems | 20 / 20 ✅ |
| ValueSets | 20 / 20 ✅ |

**Total : 80 fichiers FSH — schéma RS-EDA couvert intégralement.**
