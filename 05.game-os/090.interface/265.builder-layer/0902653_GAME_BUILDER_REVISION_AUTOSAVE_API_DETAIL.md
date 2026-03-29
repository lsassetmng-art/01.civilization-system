# ============================================================
# GAME BUILDER REVISION AUTOSAVE API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Revision and Autosave API of Game Builder.

This interface specifies the persistence-facing API contract
used by Builder frontend and Builder-supporting services.

It covers:
- official saved revision creation
- revision listing
- revision retrieval
- revision restore to working state
- autosave snapshot creation
- autosave snapshot listing
- autosave retrieval
- autosave restore to working state
- save/autosave lineage visibility
- dirty/freshness support


# ============================================================
# 1. ROLE OF REVISION / AUTOSAVE API
# ============================================================

This API group manages the formal persistence layers
of Builder authoring.

It must preserve the distinction between:

- working state
- autosave snapshot
- official saved revision

It must support:
- recovery
- history inspection
- revision-safe export preparation
- visible lineage
- explicit restore behavior

It must not:
- collapse autosave into official save
- silently overwrite revision history
- bypass validation/export boundaries


# ============================================================
# 2. OFFICIAL SAVED REVISION OBJECT MINIMUM SHAPE
# ============================================================

A revision object must expose at minimum:

- revision_ref
- project_code
- revision_number or revision_version
- revision_status
- created_at
- created_by
- content_hash or equivalent
- runtime_binding_summary
- template_binding_summary
- asset_binding_summary
- validation_state_summary where available

Recommended additional fields:
- save_summary
- source_working_state_ref where traceable
- export_eligibility_summary
- lineage_summary

revision_status examples:
- created
- active
- superseded
- archived


# ============================================================
# 3. AUTOSAVE SNAPSHOT OBJECT MINIMUM SHAPE
# ============================================================

An autosave snapshot object must expose at minimum:

- autosave_snapshot_ref
- project_code
- snapshot_status
- created_at
- snapshot_hash or equivalent
- origin_summary
- restore_eligibility_summary

Recommended additional fields:
- source_working_state_ref where traceable
- superseded_by_ref where applicable
- autosave_summary

snapshot_status examples:
- captured
- restorable
- superseded
- discarded
- archived


# ============================================================
# 4. SAVE PROJECT REVISION
# ============================================================

operation_name:
save_project_revision

purpose:
Create an official saved revision from current Builder authoring state.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- save_summary
- source_working_state_ref where supported
- expected_latest_revision_ref for conflict-aware flows

required_response_fields:
- revision_ref
- project_code
- revision_number or revision_version
- revision_status
- created_at
- content_hash or equivalent
- validation_state_summary where available

behavior_rules:
- save must create a new immutable revision
- save must not overwrite prior revision identity
- save may trigger lightweight validation where policy allows
- save must update latest revision pointer for the project
- save must not automatically export or submit

blocking_conditions:
- project unresolved
- permission denied
- lock conflict where applicable
- state_conflict where expected_latest_revision_ref is violated
- policy_blocked


# ============================================================
# 5. LIST PROJECT REVISIONS
# ============================================================

operation_name:
list_project_revisions

purpose:
Return formal saved revision history for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_archived
- created_after
- created_before
- page_ref where pagination is used
- sort_key

required_response_fields:
- project_code
- revision_list
- page_summary or total_count

Each revision_list item should expose at minimum:
- revision_ref
- revision_number or revision_version
- created_at
- created_by
- revision_status
- content_hash summary
- validation_state_summary
- export_eligibility_summary where available

behavior_rules:
- revision history must remain project-scoped
- revision order must be clear
- immutable revision lineage must remain visible


# ============================================================
# 6. GET PROJECT REVISION
# ============================================================

operation_name:
get_project_revision

purpose:
Return one formal saved revision in detail.

required_request_fields:
- project_code
- revision_ref
- correlation_id

required_response_fields:
- revision object with minimum shape
- structured payload reference or payload access summary
- lineage summary
- validation summary
- export relation summary where available

behavior_rules:
- revision retrieval must be enough to support revision inspection
- response must not imply that revision is current working state automatically


# ============================================================
# 7. RESTORE REVISION TO WORKING STATE
# ============================================================

operation_name:
restore_revision_to_working_state

purpose:
Load one saved revision into working state
without rewriting revision history.

required_request_fields:
- project_code
- revision_ref
- correlation_id

optional_request_fields:
- restore_summary
- force_if_dirty where policy allows
- expected_dirty_state where supported

required_response_fields:
- project_code
- restored_revision_ref
- resulting_working_state_summary
- updated_at or restored_at

behavior_rules:
- restore targets working state only
- restore must not mutate revision history
- restore must not silently destroy unsaved work without explicit allowed path
- restore should preserve visibility of what revision was restored

blocking_conditions:
- revision unresolved
- permission denied
- lock conflict where applicable
- dirty_state conflict where force is not allowed
- policy_blocked


# ============================================================
# 8. WRITE AUTOSAVE SNAPSHOT
# ============================================================

operation_name:
write_autosave_snapshot

purpose:
Create a recovery-oriented autosave snapshot.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- autosave_summary
- source_working_state_ref where supported
- snapshot_hash where precomputed
- replace_prior_autosave_hint where supported

required_response_fields:
- autosave_snapshot_ref
- project_code
- snapshot_status
- created_at
- snapshot_hash or equivalent

behavior_rules:
- autosave must not become official saved revision
- autosave should update latest autosave pointer
- autosave may supersede prior autosaves according to retention policy
- autosave should remain recoverable until discarded or superseded/expired by policy

blocking_conditions:
- project unresolved
- permission denied
- policy_blocked
- temporary storage failure where relevant


# ============================================================
# 9. LIST AUTOSAVE SNAPSHOTS
# ============================================================

operation_name:
list_autosave_snapshots

purpose:
Return autosave snapshot history or recent autosaves for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_discarded
- created_after
- page_ref where pagination is used
- sort_key

required_response_fields:
- project_code
- autosave_snapshot_list
- page_summary or total_count

Each autosave entry should expose at minimum:
- autosave_snapshot_ref
- created_at
- snapshot_status
- snapshot_hash summary
- restore_eligibility_summary

behavior_rules:
- autosave listing must remain distinct from revision listing
- autosave listing should support recovery UX


# ============================================================
# 10. GET AUTOSAVE SNAPSHOT
# ============================================================

operation_name:
get_autosave_snapshot

purpose:
Return one autosave snapshot in detail.

required_request_fields:
- project_code
- autosave_snapshot_ref
- correlation_id

required_response_fields:
- autosave snapshot object with minimum shape
- payload reference or access summary
- lineage summary
- restore summary

behavior_rules:
- autosave retrieval must not imply formal revision status
- autosave retrieval must remain recovery-oriented


# ============================================================
# 11. RESTORE AUTOSAVE TO WORKING STATE
# ============================================================

operation_name:
restore_autosave_to_working_state

purpose:
Load one autosave snapshot into working state
without converting it into official saved revision automatically.

required_request_fields:
- project_code
- autosave_snapshot_ref
- correlation_id

optional_request_fields:
- restore_summary
- force_if_dirty where policy allows
- expected_dirty_state where supported

required_response_fields:
- project_code
- restored_autosave_snapshot_ref
- resulting_working_state_summary
- restored_at

behavior_rules:
- restore targets working state only
- restore must not create official saved revision implicitly
- restored autosave should be visibly distinguishable from formal save lineage
- restored autosave content must require explicit save to become official revision

blocking_conditions:
- autosave unresolved
- permission denied
- dirty_state conflict where force is not allowed
- policy_blocked


# ============================================================
# 12. DISCARD AUTOSAVE SNAPSHOT
# ============================================================

operation_name:
discard_autosave_snapshot

purpose:
Mark an autosave snapshot as no longer needed for recovery.

required_request_fields:
- project_code
- autosave_snapshot_ref
- correlation_id

required_response_fields:
- autosave_snapshot_ref
- snapshot_status
- updated_at

behavior_rules:
- discard should not affect official revision history
- discard should update latest autosave pointer if needed
- discard may be restricted by retention policy


# ============================================================
# 13. GET SAVE STATE SUMMARY
# ============================================================

operation_name:
get_save_state_summary

purpose:
Return a UI-friendly summary of working/save/autosave state.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project_code
- dirty_state
- latest_revision_ref where applicable
- latest_revision_timestamp where applicable
- latest_autosave_snapshot_ref where applicable
- latest_autosave_timestamp where applicable
- autosave_newer_than_latest_revision yes/no
- save_state_summary

behavior_rules:
- response must be enough to drive editor save-state UI
- response must make the distinction between autosave and official save obvious


# ============================================================
# 14. GET REVISION / AUTOSAVE FRESHNESS SUMMARY
# ============================================================

operation_name:
get_revision_autosave_freshness_summary

purpose:
Return freshness comparison between official save and autosave.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- latest_revision_ref where applicable
- latest_autosave_snapshot_ref where applicable
- latest_revision_timestamp where applicable
- latest_autosave_timestamp where applicable
- autosave_newer_than_latest_revision yes/no
- freshness_summary

behavior_rules:
- intended for recovery and dirty-state UX
- should help answer whether recovery prompt is needed


# ============================================================
# 15. ROLE-AWARE ACCESS RULE
# ============================================================

Revision / Autosave API access must be role-aware.

owner:
- full save/revision/autosave history access

editor:
- save and autosave access according to policy
- revision history access where allowed

reviewer:
- read visibility only where granted
- no unrestricted save/autosave mutation by default

publisher:
- revision visibility where needed for export/submission confidence
- no unrestricted authoring persistence mutation by default

Permissions must be enforced by API.


# ============================================================
# 16. LOCK / CONFLICT AWARE RULE
# ============================================================

Revision / Autosave APIs must be conflict-aware where relevant.

Potential conflict classes:
- project lock conflict
- expected latest revision mismatch
- dirty-state restore conflict
- collaborator overwrite risk

Responses should distinguish:
- lock_conflict
- state_conflict
- policy_blocked
- permission_denied

Where possible, responses should expose:
- blocking_reason_summary
- next_allowed_actions summary


# ============================================================
# 17. ERROR MODEL
# ============================================================

Revision / Autosave API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- lock_conflict
- recovery_conflict

Where helpful, responses should expose:
- affected_scope_summary
- stale_state_summary
- next_allowed_actions summary


# ============================================================
# 18. FINAL INTERFACE RULE
# ============================================================

The Revision / Autosave API preserves Builder persistence layers.

Core summary:

- official save creates immutable revisions
- autosave creates recovery snapshots only
- revision history and autosave history must remain distinct
- restore targets working state, not formal history
- autosave restore must not become official save implicitly
- save-state and freshness summaries must remain easy to consume
