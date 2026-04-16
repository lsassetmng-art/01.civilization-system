# CX22073JW Boundary and Data Policy
- project: CX22073JW
- document_type: policy
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the boundary of what CX22073JW stores and how it should be treated.

## 2. Standard Foundation Policy
CX22073JW stores reusable knowledge/reference/template data only.

## 3. Allowed Storage
Allowed:
- general explanations
- reusable reference ranges
- reusable score rules
- reusable food / nutrient dictionaries
- reusable templates
- reusable checklists
- source/review metadata
- registry/governance metadata
- foundation optimization support metadata
- future privileged secret data in separated secret layer

## 4. Forbidden Runtime Storage
Do not store as ordinary foundation data:
- user-specific raw measurements
- per-user intake logs
- per-user recommendation results
- per-case consultation text
- per-case workflow runtime status

## 5. Triple Secret Policy
CX22073JW contains a special triple-only access route.

This route is:
- privileged
- limited
- separated from normal access

Secret information accessible through this route:
- is not ordinary public/reference foundation content
- must be kept in a separated secret layer
- must not be mixed with normal caller/scope assumptions

## 6. Policy Distinction
There are now two policy zones.

### 6-1. Normal Foundation Zone
Contains:
- reusable knowledge
- reusable reference
- reusable template
- reusable governance metadata

### 6-2. Privileged Secret Zone
Contains:
- future secret information
- triple-only accessible data
- restricted privileged assets

## 7. AI + Secret Coexistence Rule
The embedded AI may optimize:
- storage
- placement
- indexing
- summarization
for both normal and privileged layers,
but optimization must not weaken the separation between them.

## 8. Final Rule
The boundary is:
- normal reusable foundation data -> standard CX22073JW layer
- privileged secret data -> triple-only separated secret layer
- runtime/user/case/session state -> outside CX22073JW
