# ============================================================
# GAME BUILDER BLOCK EDITOR API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Block Editor API of Game Builder.

This interface specifies the block-facing API contract
used by Main Editor and Builder-supporting services.

It covers:
- block listing
- block retrieval
- block creation
- block update
- block reorder
- block clone
- block archive/remove
- block-level validation visibility
- zone-aware editing
- role and lock-aware behavior

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF BLOCK EDITOR API
# ============================================================

The Block Editor API manages structured authoring units
inside a Builder project.

A block is the minimum structured editing unit
for Builder-side content authoring.

The Block Editor API must support:
- runtime-aware block editing
- template-aware block editing
- structure-aware block hierarchy
- validation-friendly mutation
- lock-aware mutation
- zone-aware mutation

The Block Editor API must not:
- allow arbitrary schema mutation
- bypass runtime family legality
- bypass template structure rules
- bypass protected-zone restrictions


# ============================================================
# 2. BLOCK OBJECT MINIMUM SHAPE
# ============================================================

A block object must expose at minimum:

- block_id
- project_code
- block_type
- block_title
- parent_block_id where applicable
- order_index
- zone_classification
- lock_state where applicable
- validation_state_summary
- content_payload
- created_at
- updated_at

Optional but recommended:
- runtime_scope_summary
- template_scope_summary
- child_count
- lineage_summary


# ============================================================
# 3. LIST PROJECT BLOCKS
# ============================================================

operation_name:
list_project_blocks

purpose:
Return the block structure for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- parent_block_id
- block_type
- validation_state_filter
- lock_state_filter
- depth_limit where supported

required_response_fields:
- project_code
- block_list or block_tree
- structure_summary

Each returned block entry should expose at minimum:
- block_id
- block_type
- block_title
- parent_block_id
- order_index
- zone_classification
- validation_state_summary
- lock_state where applicable

behavior_rules:
- response must support structure tree rendering
- response must be runtime-aware and template-aware
- response must not hide invalid or locked blocks silently


# ============================================================
# 4. GET BLOCK
# ============================================================

operation_name:
get_block

purpose:
Return the detailed block object for one block.

required_request_fields:
- project_code
- block_id
- correlation_id

required_response_fields:
- block object with minimum shape
- runtime/template metadata summary
- editable field summary
- validation summary
- lock summary where applicable

behavior_rules:
- get_block must be enough to populate Main Editor center and inspector panes
- response must expose whether fields are editable, protected, or override-only


# ============================================================
# 5. CREATE BLOCK
# ============================================================

operation_name:
create_block

purpose:
Create a new block within an allowed structural position.

required_request_fields:
- project_code
- block_type
- correlation_id

optional_request_fields:
- parent_block_id
- insert_after_block_id
- initial_content_payload
- block_title
- create_from_preset_ref where applicable

required_response_fields:
- block_id
- project_code
- block_type
- parent_block_id where applicable
- order_index
- created_at
- updated_at

behavior_rules:
- block creation must validate runtime family legality
- block creation must validate template structural legality
- parent-child legality must be enforced
- create_from_preset may be preferred where supported
- created block must receive fresh identity

blocking_conditions:
- project unresolved
- illegal block_type for current runtime family
- illegal parent-child relationship
- protected zone restriction
- permission denied
- lock conflict where applicable


# ============================================================
# 6. UPDATE BLOCK
# ============================================================

operation_name:
update_block

purpose:
Update the editable content or metadata of one block.

required_request_fields:
- project_code
- block_id
- correlation_id

optional_mutable_fields:
- block_title
- content_payload
- selected editable metadata fields
- asset references where allowed
- linkage fields where allowed

required_response_fields:
- block_id
- updated_at
- updated block summary
- validation_state_summary

behavior_rules:
- updates must be field-aware and zone-aware
- protected zone mutation must be blocked in ordinary edit path
- advanced override zone mutation must require explicit allowed path
- invalid references should produce structured validation output
- update must not silently alter unrelated blocks

blocking_conditions:
- block unresolved
- protected zone mutation attempt
- runtime-incompatible field mutation
- template-incompatible field mutation
- permission denied
- lock conflict where applicable


# ============================================================
# 7. REORDER BLOCK
# ============================================================

operation_name:
reorder_block

purpose:
Reorder a block within its valid structure context.

required_request_fields:
- project_code
- block_id
- correlation_id

required_position_fields:
One of:
- new_order_index
- insert_after_block_id
- insert_before_block_id

required_response_fields:
- block_id
- parent_block_id where applicable
- new_order_index or resulting order summary
- updated_at

behavior_rules:
- reorder must preserve valid structure
- reorder must respect runtime continuity constraints
- reorder must respect template-required ordering rules where applicable
- reorder must not silently orphan the block

blocking_conditions:
- illegal target position
- continuity-breaking reordering
- permission denied
- lock conflict where applicable


# ============================================================
# 8. CLONE BLOCK
# ============================================================

operation_name:
clone_block

purpose:
Create a new block derived from an existing block.

required_request_fields:
- project_code
- block_id
- correlation_id

optional_request_fields:
- target_parent_block_id
- insert_after_block_id
- clone_mode_summary where applicable

required_response_fields:
- new_block_id
- source_block_id
- parent_block_id where applicable
- created_at

behavior_rules:
- clone must create fresh block identity
- clone must preserve compatible structure
- clone must refresh lineage markers
- clone must invalidate or regenerate unique references where required
- clone must remain runtime/template legal

blocking_conditions:
- source block unresolved
- cloning prohibited for this block type
- target location illegal
- permission denied
- lock conflict where applicable


# ============================================================
# 9. ARCHIVE / REMOVE BLOCK
# ============================================================

operation_name:
archive_block
or
remove_block_from_active_structure

purpose:
Remove a block from active authoring structure
without necessarily destroying lineage.

required_request_fields:
- project_code
- block_id
- correlation_id

required_response_fields:
- block_id
- resulting_status or removal_summary
- updated_at

behavior_rules:
- archive/remove is preferred over destructive delete where structure matters
- dependent child blocks or inbound references must be checked
- required template blocks may not be removable without explicit allowed path
- lineage should remain inspectable where policy requires

blocking_conditions:
- block is required by template structure
- inbound references unresolved
- child dependency violation
- permission denied
- lock conflict where applicable


# ============================================================
# 10. LIST BLOCK VALIDATION STATE
# ============================================================

operation_name:
list_block_validation_state
or
get_block_validation_state

purpose:
Return validation visibility for one or more blocks.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- block_id
- validation_stage
- severity_filter

required_response_fields:
- block validation entries
Each entry should include:
- block_id
- validation_stage
- severity_summary
- finding_count_summary
- last_validated_at where applicable

behavior_rules:
- block validation state must align with formal validation results
- frontend must not need to invent block validation state


# ============================================================
# 11. ZONE-AWARE EDITING RULE
# ============================================================

All block mutations must be zone-aware.

Minimum zone classes:
- protected_zone
- editable_zone
- advanced_override_zone

API behavior:
- protected_zone: reject ordinary mutation
- editable_zone: allow ordinary mutation if otherwise legal
- advanced_override_zone: allow only through explicit advanced path if policy allows

The API must return enough information
for the frontend to explain why mutation was blocked.


# ============================================================
# 12. ROLE-AWARE ACCESS RULE
# ============================================================

Block Editor API access must be role-aware.

owner:
- full block read/create/update/reorder/clone/archive authority

editor:
- broad block authoring authority according to policy

reviewer:
- read access
- validation visibility
- no unrestricted mutation by default

publisher:
- read access by default
- no unrestricted block mutation by default

Permissions must be enforced by API,
not only by frontend behavior.


# ============================================================
# 13. LOCK-AWARE ACCESS RULE
# ============================================================

Block Editor API must be lock-aware where lock system is enabled.

Lock concepts may include:
- project lock
- block lock

Mutation requests should evaluate:
- whether block is locked
- whether project is locked
- whether caller owns the lock or has override authority where allowed

Responses should expose:
- lock conflict state
- lock holder visibility where policy allows
- retry or next allowed action hints where possible


# ============================================================
# 14. ERROR MODEL
# ============================================================

Block Editor API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- lock_conflict
- validation_blocked where applicable

Where helpful, responses should expose:
- affected_scope_summary
- blocking_reason_summary
- next_allowed_actions summary


# ============================================================
# 15. FINAL INTERFACE RULE
# ============================================================

The Block Editor API is the structured authoring surface
behind Main Editor.

Core summary:

- blocks are the minimum edit unit
- list/get must support structure-aware editing
- create/update/reorder/clone/archive must be explicit
- runtime and template legality must be enforced
- zone-aware editing is mandatory
- role and lock awareness are mandatory
- block validation visibility must remain explicit
