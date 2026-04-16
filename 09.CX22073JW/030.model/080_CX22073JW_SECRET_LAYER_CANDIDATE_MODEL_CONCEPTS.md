# CX22073JW Secret Layer Candidate Model Concepts
- project: CX22073JW
- document_type: secret-layer-candidate-model-concepts
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document defines candidate model concepts for the future secret layer of CX22073JW.

## 2. Position
The secret layer is a privileged model zone inside CX22073JW.
It is separate from the ordinary knowledge/reference layer.

## 3. Candidate Model Concepts

### 3-1. secret_asset
Meaning:
- the basic protected object in the secret layer

Expected responsibility:
- represent one protected secret-bearing unit
- hold privileged classification identity
- be selectable only through privileged route logic

### 3-2. secret_asset_category
Meaning:
- the category/class of secret assets

Expected responsibility:
- distinguish kinds of protected assets
- support future policy branching
- support secret target selection logic

### 3-3. secret_target
Meaning:
- the resolved privileged target intended by a triple route request

Expected responsibility:
- separate abstract asset existence from route-time target resolution
- support future scoped privileged retrieval

### 3-4. privilege_tier_reference
Meaning:
- the privileged tier concept used for access reasoning

Expected responsibility:
- express level of privileged access
- support secret eligibility interpretation
- remain distinct from ordinary caller/scope assumptions

### 3-5. secret_route_binding
Meaning:
- the binding between privileged route concepts and secret targets/categories

Expected responsibility:
- define which route may reach which kind of target
- make route separation explicit in model terms

### 3-6. secret_access_audit_marker
Meaning:
- audit-oriented trace marker for privileged access handling

Expected responsibility:
- preserve design readiness for future auditability
- distinguish privileged handling from ordinary retrieval

## 4. Candidate Field Themes
Exact columns are not fixed yet, but future concepts may require fields around:
- secret asset code
- secret asset category code
- privilege tier code
- route code
- secret target selector code
- isolation status
- lifecycle status
- audit marker fields
- protected summary/index support fields

## 5. Design Rules
- secret concepts must not be mixed into ordinary article/reference assumptions
- privileged routing concepts must remain explicit
- model should be capable of isolation, auditability, and future extension
- normal foundation readability must remain intact

## 6. What Is Fixed Already
Already fixed:
- secret layer exists
- triple route exists
- route separation is mandatory
- secret isolation is mandatory

## 7. What Is Not Fixed Yet
Not fixed yet:
- exact tables
- exact DDL
- exact column list
- exact audit payload design

## 8. Conclusion
This document fixes the minimum candidate model vocabulary needed before exact secret-layer table design begins.
