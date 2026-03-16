# Avancement — Modèles logiques FSH (RS-EDA)

**Source** : schéma JSON [RS-EDA](https://github.com/ansforge/SAMU-Hub-Modeles/blob/main/src/main/resources/json-schema/RS-EDA.schema.json)

---

## Conventions adoptées

- Les objets réutilisables (`definitions/`) → **LogicalModels séparés**, pas BackboneElement inline.
- Les enums JSON → **CodeSystem + ValueSet** dédiés.
- Nommage : `LM_<Objet>`, `CS_<Concept>`, `VS_<Concept>`.
- Les codes avec caractères spéciaux (`.`, `-`) sont entourés de backticks dans les CodeSystems FSH.
- `caller.language` est lié au ValueSet FHIR standard `http://hl7.org/fhir/ValueSet/languages` (BCP-47).
- `caseDetails.careLevel` réutilise `VS_PatientCareLevel` (mêmes valeurs R1–R4).

---

## Fichiers créés

### LogicalModels (`input/fsh/Logicals/`)

| Fichier | Objet schéma | Statut |
|---|---|---|
| `LM_CreateCaseHealth.fsh` | Racine RS-EDA | ✅ |
| `LM_Qualification.fsh` | `definitions/qualification` | ✅ |
| `LM_CaseDetails.fsh` | `definitions/caseDetails` | ✅ |
| `LM_WhatsHappen.fsh` | `definitions/whatsHappen` | ✅ |
| `LM_LocationKind.fsh` | `definitions/locationKind` | ✅ |
| `LM_HealthMotive.fsh` | `definitions/healthMotive` | ✅ |
| `LM_RiskThreat.fsh` | `definitions/riskThreat` | ✅ |
| `LM_Location.fsh` | `definitions/location` | ✅ |
| `LM_DetailedAddress.fsh` | `definitions/detailedAddress` | ✅ |
| `LM_Highway.fsh` | `definitions/highway` | ✅ |
| `LM_WayName.fsh` | `definitions/wayName` | ✅ |
| `LM_City.fsh` | `definitions/city` | ✅ |
| `LM_Access.fsh` | `definitions/access` | ✅ |
| `LM_Geometry.fsh` | `definitions/geometry` | ✅ |
| `LM_Point.fsh` | `definitions/point` | ✅ |
| `LM_Coord.fsh` | `definitions/coord` | ✅ |
| `LM_ExternalInfo.fsh` | `definitions/externalInfo` | ✅ |
| `LM_ExternalLocationId.fsh` | `definitions/externalLocationId` | ✅ |
| `LM_Alert.fsh` | `definitions/alert` | ✅ |
| `LM_Notes.fsh` | `definitions/notes` | ✅ |
| `LM_Caller.fsh` | `definitions/caller` | ✅ |
| `LM_Contact.fsh` | `definitions/contact` | ✅ |
| `LM_DetailedName.fsh` | `definitions/detailedName` (transverse) | ✅ |
| `LM_Patient.fsh` | `definitions/patient` | ✅ |
| `LM_AdministrativeFile.fsh` | `definitions/administrativeFile` | ✅ |
| `LM_ExternalId.fsh` | `definitions/externalId` | ✅ |
| `LM_GeneralPractitioner.fsh` | `definitions/generalPractitioner` | ✅ |
| `LM_PersonalContact.fsh` | `definitions/personalContact` | ✅ |
| `LM_Identity.fsh` | `definitions/Identity` | ✅ |
| `LM_InsStrictFeatures.fsh` | `definitions/insStrictFeatures` | ✅ |
| `LM_PatientDetail.fsh` | `definitions/patientDetail` | ✅ |
| `LM_Hypothesis.fsh` | `definitions/hypothesis` | ✅ |
| `LM_MainDiagnosis.fsh` | `definitions/mainDiagnosis` | ✅ |
| `LM_OtherDiagnosis.fsh` | `definitions/otherDiagnosis` | ✅ |
| `LM_MedicalNote.fsh` | `definitions/medicalNote` | ✅ |
| `LM_Operator.fsh` | `definitions/operator` | ✅ |
| `LM_Decision.fsh` | `definitions/decision` | ✅ |
| `LM_Destination.fsh` | `definitions/destination` | ✅ |
| `LM_AdditionalInformation.fsh` | `definitions/additionalInformation` | ✅ |
| `LM_CustomMap.fsh` | `definitions/customMap` | ✅ |

### CodeSystems (`input/fsh/CodeSystems/`)

| Fichier | Enum source | Statut |
|---|---|---|
| `CS_OperatorRole.fsh` | `operator.role` | ✅ |
| `CS_ExternalIdSource.fsh` | `externalId.source` | ✅ |
| `CS_Sex.fsh` | `insStrictFeatures.sex` | ✅ |
| `CS_PatientCareLevel.fsh` | `patientDetail.careLevel` (réutilisé pour `caseDetails.careLevel`) | ✅ |
| `CS_ContactType.fsh` | `contact.type` / `personalContact.type` | ✅ |
| `CS_QualificationOrigin.fsh` | `qualification.origin` | ✅ |
| `CS_CaseStatus.fsh` | `caseDetails.status` | ✅ |
| `CS_CasePriority.fsh` | `caseDetails.priority` | ✅ |
| `CS_CaseAttribution.fsh` | `caseDetails.attribution` | ✅ |
| `CS_CoordPrecision.fsh` | `coord.precision` | ✅ |
| `CS_ExternalLocationIdSource.fsh` | `externalLocationId.source` | ✅ |
| `CS_ExternalInfoType.fsh` | `externalInfo.type` | ✅ |
| `CS_DecisionType.fsh` | `decision.decisionType` | ✅ |
| `CS_OrientationType.fsh` | `decision.orientationType` | ✅ |
| `CS_Perimeter.fsh` | `perimeter` (racine) | ✅ |
| `CS_InterventionType.fsh` | `interventionType` (racine) | ✅ |
| `CS_ContactChannel.fsh` | `contact.channel` | ✅ |
| `CS_CallerType.fsh` | `caller.type` | ✅ |
| `CS_CallerCommunication.fsh` | `caller.communication` | ✅ |
| `CS_ResourceType.fsh` | `decision.resourceType` | ✅ |

### ValueSets (`input/fsh/ValueSets/`)

| Fichier | Statut |
|---|---|
| `VS_OperatorRole.fsh` | ✅ |
| `VS_ExternalIdSource.fsh` | ✅ |
| `VS_Sex.fsh` | ✅ |
| `VS_PatientCareLevel.fsh` | ✅ |
| `VS_ContactType.fsh` | ✅ |
| `VS_QualificationOrigin.fsh` | ✅ |
| `VS_CaseStatus.fsh` | ✅ |
| `VS_CasePriority.fsh` | ✅ |
| `VS_CaseAttribution.fsh` | ✅ |
| `VS_CoordPrecision.fsh` | ✅ |
| `VS_ExternalLocationIdSource.fsh` | ✅ |
| `VS_ExternalInfoType.fsh` | ✅ |
| `VS_DecisionType.fsh` | ✅ |
| `VS_OrientationType.fsh` | ✅ |
| `VS_Perimeter.fsh` | ✅ |
| `VS_InterventionType.fsh` | ✅ |
| `VS_ContactChannel.fsh` | ✅ |
| `VS_CallerType.fsh` | ✅ |
| `VS_CallerCommunication.fsh` | ✅ |
| `VS_ResourceType.fsh` | ✅ |

---

## Graphe de dépendances

```
LM_CreateCaseHealth (racine RS-EDA)
├── LM_Qualification
│   ├── LM_WhatsHappen
│   ├── LM_LocationKind
│   ├── LM_HealthMotive
│   ├── LM_CaseDetails
│   └── LM_RiskThreat[]
├── LM_Location
│   ├── LM_DetailedAddress
│   │   ├── LM_Highway
│   │   └── LM_WayName
│   ├── LM_City
│   ├── LM_Access
│   ├── LM_ExternalInfo[]
│   ├── LM_ExternalLocationId[]
│   └── LM_Geometry
│       └── LM_Point
│           └── LM_Coord
├── LM_Alert
│   ├── LM_Caller
│   │   ├── LM_Contact (callerContact)
│   │   ├── LM_Contact (callbackContact)
│   │   └── LM_DetailedName
│   └── LM_Notes[]
├── LM_Patient[]
│   ├── LM_AdministrativeFile
│   │   ├── LM_ExternalId[]
│   │   └── LM_GeneralPractitioner
│   │       ├── LM_DetailedName
│   │       └── LM_PersonalContact[]
│   ├── LM_Identity
│   │   ├── LM_InsStrictFeatures
│   │   └── LM_DetailedName
│   ├── LM_PatientDetail
│   └── LM_Hypothesis
│       ├── LM_MainDiagnosis
│       └── LM_OtherDiagnosis[]
├── LM_MedicalNote[]
│   └── LM_Operator
├── LM_Decision[]
│   ├── LM_Operator
│   └── LM_Destination
│       └── LM_ExternalLocationId[]
└── LM_AdditionalInformation
    └── LM_CustomMap[] (max 3)
```

---

## Comptage

| Catégorie | Fait |
|---|---|
| LogicalModels | 40 / 40 ✅ |
| CodeSystems | 20 / 20 ✅ |
| ValueSets | 20 / 20 ✅ |

**Total : 80 fichiers FSH — schéma RS-EDA couvert intégralement.**
