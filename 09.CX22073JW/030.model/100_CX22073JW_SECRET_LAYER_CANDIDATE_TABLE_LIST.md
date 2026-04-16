# CX22073JW Secret Layer Candidate Table List
- project: CX22073JW
- document_type: secret-layer-candidate-table-list
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document lists candidate tables for the future triple-only secret layer.

## 2. Position
These are candidate tables for the privileged secret layer only.
They are not part of the ordinary public/reference layer.

## 3. Candidate Table List

### 3-1. secret_asset
Purpose:
- the main protected object of the secret layer

Expected responsibility:
- represent one privileged secret-bearing unit
- connect secret identity, category, and lifecycle state
- act as the primary protected target object

Expected themes:
- secret asset code
- secret category reference
- secret title/label
- secret summary/protected summary
- lifecycle status
- isolation status
- created/updated timestamps

### 3-2. secret_asset_category_master
Purpose:
- classify secret assets by privileged category

Expected responsibility:
- provide reusable category identity
- support policy branching
- support target selection semantics

Expected themes:
- category code
- display name
- description
- sort order
- status

### 3-3. secret_target_master
Purpose:
- define privileged target selectors

Expected responsibility:
- distinguish abstract selector from physical secret asset
- support route-time selection
- make privileged intent explicit

Expected themes:
- target code
- target type
- target selector meaning
- linked category or rule reference
- status

### 3-4. secret_route_binding
Purpose:
- bind privileged routes to target classes/categories

Expected responsibility:
- express which privileged route may reach which target class
- keep route separation explicit in model form

Expected themes:
- route binding code
- access route code
- privilege tier code
- secret target code
- binding status

### 3-5. secret_asset_relation
Purpose:
- define relation between secret assets

Expected responsibility:
- structure secret assets without mixing them into normal-layer relations
- support privileged-only linkage

Expected themes:
- from secret asset
- to secret asset
- relation type
- status

### 3-6. secret_asset_index_support
Purpose:
- support indexing/search organization for secret assets

Expected responsibility:
- foundation-side optimization support
- protected indexing and retrieval-readiness support

Expected themes:
- secret asset
- index token / index hint / summary hint
- optimization status
- update timestamp

## 4. Table Design Rule
These candidate tables should follow these rules:
- no normal-layer assumption
- explicit privileged separation
- no public/reference visibility assumption
- future auditability friendliness
- future AI optimization friendliness

## 5. Current Status
Current status:
- candidate only
- not exact DDL
- not final column set
- model-level preparation asset

## 6. Conclusion
The secret layer should be designed from a small but explicit protected table vocabulary, not by reusing normal-layer tables blindly.
