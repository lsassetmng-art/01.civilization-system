# CX22073JW Privileged Metadata Candidate Table List
- project: CX22073JW
- document_type: privileged-metadata-candidate-table-list
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document lists candidate metadata tables needed for triple-route privileged handling.

## 2. Why Separate Metadata Tables
Privileged handling should not overload ordinary:
- caller metadata
- scope metadata
- route policy metadata

It needs its own explicit metadata layer.

## 3. Candidate Table List

### 3-1. access_route_master
Purpose:
- define access lanes

Expected values:
- normal
- triple

Expected themes:
- access route code
- display name
- description
- status

### 3-2. privilege_tier_master
Purpose:
- define privileged tier references

Expected responsibility:
- express stronger/weaker privileged access levels
- remain distinct from normal caller identity

Expected themes:
- privilege tier code
- display name
- priority level
- description
- status

### 3-3. secret_eligibility_profile
Purpose:
- define secret access eligibility profiles

Expected responsibility:
- represent privileged eligibility logic basis
- support future access decisions

Expected themes:
- eligibility code
- privilege tier linkage
- description
- status

### 3-4. secret_target_selector_master
Purpose:
- define reusable selector identities for privileged target selection

Expected responsibility:
- prevent vague privileged retrieval
- give stable target selector vocabulary

Expected themes:
- selector code
- display name
- selector meaning
- target class linkage
- status

### 3-5. privileged_policy_profile
Purpose:
- define privileged route policy behavior

Expected responsibility:
- complement normal route_policy
- express privileged handling semantics

Expected themes:
- privileged policy code
- route code
- privilege tier linkage
- isolation requirement
- audit requirement
- status

### 3-6. privileged_route_policy_binding
Purpose:
- bind privileged route metadata together

Expected responsibility:
- connect route, privilege tier, selector, and policy profile

Expected themes:
- binding code
- access route code
- privilege tier code
- selector code
- policy profile code
- status

## 4. Model Rule
Privileged metadata is additive, not substitutive.
It does not replace normal metadata.
It exists beside normal metadata for the privileged lane.

## 5. Current Status
Current status:
- candidate only
- conceptually needed
- not exact-table finalization yet

## 6. Conclusion
The privileged lane should gain its own metadata tables instead of being hidden inside ordinary routing concepts.
