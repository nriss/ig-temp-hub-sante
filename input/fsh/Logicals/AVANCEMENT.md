# Avancement — Modèles logiques FSH (RS-EDA)

**Source** : schéma JSON [RS-EDA](https://github.com/ansforge/SAMU-Hub-Modeles/blob/main/src/main/resources/json-schema/RS-EDA.schema.json)

---

## Conventions adoptées

- Les objets réutilisables (`definitions/`) → **LogicalModels séparés**, pas BackboneElement inline.
- Les enums JSON → **CodeSystem + ValueSet** dédiés.
- Nommage : `LM_<Objet>`, `CS_<Concept>`, `VS_<Concept>`.

---

## Fichiers créés

| Fichier | Type | Objet schéma | Statut |
|---|---|---|---|
| `LM_MedicalNote.fsh` | LogicalModel | `medicalNote` (racine) | ✅ |
| `LM_Operator.fsh` | LogicalModel | `definitions/operator` | ✅ |
| `LM_Patient.fsh` | LogicalModel | `definitions/patient` | ✅ |
| `LM_AdministrativeFile.fsh` | LogicalModel | `definitions/administrativeFile` | ✅ |
| `LM_ExternalId.fsh` | LogicalModel | `definitions/externalId` | ✅ |
| `LM_GeneralPractitioner.fsh` | LogicalModel | `definitions/generalPractitioner` | ✅ |
| `LM_DetailedName.fsh` | LogicalModel | `definitions/detailedName` (transverse) | ✅ |
| `LM_PersonalContact.fsh` | LogicalModel | `definitions/personalContact` | ✅ |
| `LM_Identity.fsh` | LogicalModel | `definitions/Identity` | ✅ |
| `LM_InsStrictFeatures.fsh` | LogicalModel | `definitions/insStrictFeatures` | ✅ |
| `LM_PatientDetail.fsh` | LogicalModel | `definitions/patientDetail` | ✅ |
| `LM_Hypothesis.fsh` | LogicalModel | `definitions/hypothesis` | ✅ |
| `LM_MainDiagnosis.fsh` | LogicalModel | `definitions/mainDiagnosis` | ✅ |
| `LM_OtherDiagnosis.fsh` | LogicalModel | `definitions/otherDiagnosis` | ✅ |
| `CS_OperatorRole.fsh` | CodeSystem | enum `operator.role` | ✅ |
| `CS_ExternalIdSource.fsh` | CodeSystem | enum `externalId.source` | ✅ |
| `CS_Sex.fsh` | CodeSystem | enum `insStrictFeatures.sex` | ✅ |
| `CS_PatientCareLevel.fsh` | CodeSystem | enum `patientDetail.careLevel` | ✅ |
| `CS_ContactType.fsh` | CodeSystem | enum `contact.type` / `personalContact.type` | ✅ |
| `VS_OperatorRole.fsh` | ValueSet | enum `operator.role` | ✅ |
| `VS_ExternalIdSource.fsh` | ValueSet | enum `externalId.source` | ✅ |
| `VS_Sex.fsh` | ValueSet | enum `insStrictFeatures.sex` | ✅ |
| `VS_PatientCareLevel.fsh` | ValueSet | enum `patientDetail.careLevel` | ✅ |
| `VS_ContactType.fsh` | ValueSet | enum `contact.type` / `personalContact.type` | ✅ |

---

## Inventaire complet des objets à modéliser

### Objets racine du schéma

| Objet | Champs obligatoires | Références | Statut |
|---|---|---|---|
| `createCaseHealth` (racine) | caseId, creation, qualification, location, owner | qualification, location, initialAlert (alert), patient[], medicalNote[], decision[], additionalInformation | ⬜ |

### Propriétés scalaires de la racine (pas de LogicalModel dédié)

| Propriété | Type |
|---|---|
| `caseId` | string |
| `senderCaseId` | string |
| `creation` | dateTime |
| `perimeter` | string |
| `interventionType` | string |
| `owner` | string |

---

### Objets à modéliser (`definitions/`)

#### Objets complexes principaux

| Définition | Champs obligatoires | Références internes | Statut |
|---|---|---|---|
| `qualification` | — | whatsHappen, locationKind, healthMotive, caseDetails, riskThreat[] | ⬜ |
| `location` | — | detailedAddress, city, access, geometry, externalInfo, externalLocationId | ⬜ |
| `alert` | reception, caller | caller, notes | ⬜ |
| `patient` | patientId | administrativeFile, Identity, patientDetail, hypothesis | ✅ |
| `medicalNote` | operator, medicalNoteId, freetext | operator | ✅ |
| `decision` | creation, operator, decisionType | operator, destination | ⬜ |
| `additionalInformation` | — | customMap | ⬜ |

#### Objets de qualification

| Définition | Champs obligatoires | Notes | Statut |
|---|---|---|---|
| `whatsHappen` | code, label | Paire code/label | ⬜ |
| `locationKind` | code, label | Paire code/label | ⬜ |
| `healthMotive` | code, label | Paire code/label | ⬜ |
| `riskThreat` | code, label | Paire code/label (tableau) | ⬜ |
| `caseDetails` | — | attribution, careLevel, priority, status | ⬜ |

#### Objets de localisation

| Définition | Champs obligatoires | Références internes | Statut |
|---|---|---|---|
| `detailedAddress` | complete | highway, wayName | ⬜ |
| `city` | — | — | ⬜ |
| `access` | — | — | ⬜ |
| `geometry` | datetime | point | ⬜ |
| `point` | coord | coord | ⬜ |
| `coord` | lat, lon, precision | — | ⬜ |
| `highway` | — | — | ⬜ |
| `wayName` | complete | — | ⬜ |
| `externalLocationId` | source, value | — | ⬜ |
| `externalInfo` | freetext, uri | — | ⬜ |

#### Objets liés à l'alerte initiale

| Définition | Champs obligatoires | Références internes | Statut |
|---|---|---|---|
| `caller` | callerContact | callerContact (contact), callbackContact (contact), detailedName | ⬜ |
| `contact` | channel, type, detail | — | ⬜ |
| `detailedName` | complete | — | ⬜ |
| `notes` | — | — | ⬜ |

#### Objets liés au patient

| Définition | Champs obligatoires | Références internes | Statut |
|---|---|---|---|
| `Identity` | — | insStrictFeatures (strictFeatures + nonStrictFeatures) | ✅ |
| `insStrictFeatures` | — | — | ✅ |
| `patientDetail` | — | — | ✅ |
| `hypothesis` | — | mainDiagnosis, otherDiagnosis[] | ✅ |
| `mainDiagnosis` | code, label | Paire code/label | ✅ |
| `otherDiagnosis` | code, label | Paire code/label (tableau) | ✅ |
| `administrativeFile` | — | externalId, generalPractitioner | ✅ |
| `externalId` | source, value | — | ✅ |
| `generalPractitioner` | detailedName | detailedName, contact | ✅ |

#### Objets liés à la décision

| Définition | Champs obligatoires | Références internes | Statut |
|---|---|---|---|
| `destination` | — | externalLocationId | ⬜ |

#### Objets transverses

| Définition | Champs obligatoires | Notes | Statut |
|---|---|---|---|
| `operator` | role | label, role (enum) | ✅ |
| `customMap` | key, value | freetext, key, label, value | ⬜ |

---

## Graphe de dépendances

```
createCaseHealth (racine)
├── qualification
│   ├── whatsHappen
│   ├── locationKind
│   ├── healthMotive
│   ├── caseDetails
│   └── riskThreat[]
├── location
│   ├── detailedAddress
│   │   ├── highway
│   │   └── wayName
│   ├── city
│   ├── access
│   ├── externalInfo
│   ├── externalLocationId
│   └── geometry
│       └── point
│           └── coord
├── initialAlert (alert)
│   ├── caller
│   │   ├── contact (callerContact)
│   │   ├── contact (callbackContact)
│   │   └── detailedName
│   └── notes
├── patient[]
│   ├── administrativeFile
│   │   ├── externalId
│   │   └── generalPractitioner
│   │       ├── detailedName
│   │       └── contact
│   ├── Identity
│   │   └── insStrictFeatures
│   ├── patientDetail
│   └── hypothesis
│       ├── mainDiagnosis
│       └── otherDiagnosis[]
├── medicalNote[]        ✅
│   └── operator         ✅
├── decision[]
│   ├── operator         ✅
│   └── destination
│       └── externalLocationId
└── additionalInformation
    └── customMap
```

---

## Comptage

| Catégorie | Total | Fait |
|---|---|---|
| LogicalModels | 32 | 14 |
| CodeSystems | À compléter | 5 |
| ValueSets | À compléter | 5 |
