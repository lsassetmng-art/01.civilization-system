# ============================================================
# GAME BUILDER API INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official API interface of Game Builder.

This interface defines the mandatory service boundaries
between Builder frontend and Builder-supporting backend services.

The API interface must support:

- project lifecycle
- template-first creation
- block-based editing
- asset authoring and binding
- preview launching
- validation execution
- export creation
- submission creation
- autosave and revision history
- collaboration-aware access

This document defines interface groups and required fields,
not transport-specific implementation details.


# ============================================================
# 1. GLOBAL API PRINCIPLES
# ============================================================

All Builder APIs must be:

- project-aware
- workspace-aware
- runtime-aware where applicable
- revision-aware where applicable
- role-aware
- validation-aware where applicable

All APIs must preserve the distinction between:

- working state
- autosave snapshot
- official saved revision
- export package
- submission request

No API may collapse these concepts implicitly.


# ============================================================
# 2. PROJECT API GROUP
# ============================================================

purpose:
Manage Builder projects as the primary authoring unit.

Required operations:

- create_project
- list_projects
- get_project
- update_project_metadata
- archive_project
- duplicate_project where allowed

required_fields:
- workspace_code
- project_code where applicable
- game_title_code where applicable
- runtime_family_code where applicable
- template_profile_code where applicable
- caller_role context
- correlation_id

compatibility_rule:
A project must not be created without resolved workspace linkage.

A template-first creation path should be preferred
over raw empty project creation in official Builder flows.


# ============================================================
# 3. TEMPLATE API GROUP
# ============================================================

purpose:
Support template-first Builder creation.

Required operations:

- list_template_families
- list_template_profiles
- get_template_profile
- preview_template
- create_project_from_template

required_fields:
- template_family_code where applicable
- template_profile_code where applicable
- runtime_family_code where applicable
- workspace_code for project creation
- project_name where applicable
- correlation_id

compatibility_rule:
A template profile returned for creation
must already be compatible with one approved runtime family.


# ============================================================
# 4. BLOCK EDITOR API GROUP
# ============================================================

purpose:
Support structured block-based content editing.

Required operations:

- list_project_blocks
- get_block
- create_block
- update_block
- reorder_block
- clone_block
- delete_block where allowed
- list_block_validation_state

required_fields:
- project_code
- block_id where applicable
- block_type where applicable
- parent_block_id where applicable
- order_index where applicable
- content_payload where applicable
- correlation_id

compatibility_rule:
Block operations must be validated against:
- runtime family
- template structure rules
- protected/editable/advanced override zones

A block API must not permit mutation of protected zones
through ordinary editing paths.


# ============================================================
# 5. PROJECT SAVE / REVISION API GROUP
# ============================================================

purpose:
Manage official saved revisions.

Required operations:

- save_project_revision
- list_project_revisions
- get_project_revision
- restore_revision_to_working_state

required_fields:
- project_code
- revision_ref where applicable
- save_summary where applicable
- caller_identity
- correlation_id

compatibility_rule:
save_project_revision must create a new immutable revision.

restore_revision_to_working_state must not silently overwrite
revision history.


# ============================================================
# 6. AUTOSAVE API GROUP
# ============================================================

purpose:
Support crash recovery and recovery-oriented persistence.

Required operations:

- write_autosave_snapshot
- get_latest_autosave_snapshot
- list_autosave_snapshots
- restore_autosave_to_working_state
- discard_autosave_snapshot where allowed

required_fields:
- project_code
- snapshot_ref where applicable
- snapshot_payload or equivalent where applicable
- snapshot_hash where applicable
- correlation_id

compatibility_rule:
Autosave snapshots are recovery objects only.

Autosave APIs must not create official saved revisions implicitly.


# ============================================================
# 7. ASSET API GROUP
# ============================================================

purpose:
Support Builder-owned material asset management.

Required operations:

- list_project_assets
- upload_asset
- get_asset
- update_asset_metadata
- create_derived_asset
- bind_asset_to_project
- unbind_asset_from_project where allowed

Specialized asset operations:

- save_pixel_asset
- save_unit_art_asset
- save_building_art_asset
- generate_asset_variant
- list_asset_variants

required_fields:
- project_code
- asset_ref where applicable
- asset_type
- usage_scope
- asset_metadata
- binding_target_ref where applicable
- correlation_id

compatibility_rule:
Asset APIs must enforce:
- runtime compatibility
- template asset requirements
- non-Persona material boundary rules


# ============================================================
# 8. PREVIEW API GROUP
# ============================================================

purpose:
Support sandbox runtime-backed preview.

Required operations:

- create_preview_session
- get_preview_session
- execute_preview_action
- get_preview_state
- close_preview_session

required_fields:
- project_code
- preview_session_id where applicable
- preview_mode
- preview_basis (working_state or revision_ref)
- mock_mode_summary where applicable
- correlation_id

compatibility_rule:
Preview APIs must comply with preview sandbox policy.

No preview API may bind directly to production-final truth mutation.


# ============================================================
# 9. VALIDATION API GROUP
# ============================================================

purpose:
Support Builder-triggered validation across stages.

Required operations:

- run_editing_validation
- run_export_validation
- run_publish_validation
- get_validation_result
- list_validation_results_for_project

required_fields:
- project_code
- revision_ref where applicable
- validation_stage
- validation_scope where applicable
- correlation_id

compatibility_rule:
Validation APIs must return machine-readable findings
with severity and affected scope.

Blocking findings must be identifiable by frontend
without reinterpretation.


# ============================================================
# 10. EXPORT API GROUP
# ============================================================

purpose:
Support explicit creation of export package candidates.

Required operations:

- create_export_package
- get_export_package
- list_export_packages_for_project
- get_runtime_export_contract
- inspect_export_readiness

required_fields:
- project_code
- revision_ref
- export_request_ref where applicable
- export_package_code where applicable
- runtime_family_code
- ruleset_profile_code
- asset_manifest_ref
- correlation_id

compatibility_rule:
Export APIs must refuse export
when revision is not an official saved revision
or when blocking validation findings remain.


# ============================================================
# 11. SUBMISSION API GROUP
# ============================================================

purpose:
Support Builder-side handoff into review/publish lifecycle.

Required operations:

- create_submission_request
- get_submission_request
- list_submission_requests_for_project
- inspect_submission_readiness

required_fields:
- project_code
- export_package_code
- game_title_code
- release_code
- seller_code where required through workspace linkage
- correlation_id

compatibility_rule:
Submission APIs must not allow direct submission
from working state or autosave-only state.


# ============================================================
# 12. COLLABORATION API GROUP
# ============================================================

purpose:
Support role-aware collaboration.

Required operations:

- list_project_collaborators
- add_project_collaborator where allowed
- update_project_collaborator_role where allowed
- remove_project_collaborator where allowed
- create_project_comment
- list_project_comments
- resolve_project_comment where allowed

Lock-aware operations:

- acquire_project_lock
- release_project_lock
- acquire_block_lock
- release_block_lock

required_fields:
- project_code
- collaborator_identity where applicable
- role_code where applicable
- block_id where applicable
- comment_ref where applicable
- correlation_id

compatibility_rule:
Collaboration APIs must not imply hidden permission escalation.


# ============================================================
# 13. PROJECT STATE INSPECTION API GROUP
# ============================================================

purpose:
Provide unified read surfaces for Builder status visibility.

Required operations:

- get_project_status_summary
- get_save_state_summary
- get_validation_state_summary
- get_export_state_summary
- get_submission_state_summary

required_fields:
- project_code
- correlation_id

A Builder frontend must be able to derive from these responses:
- dirty state
- autosave availability
- latest official revision
- validation state
- export readiness
- submission existence


# ============================================================
# 14. REQUIRED RESPONSE SHAPE PRINCIPLE
# ============================================================

All Builder APIs should expose response objects
that are both machine-readable and UI-friendly.

Recommended response sections where relevant:

- identity
- status
- summary
- linkage
- validation
- timestamps
- permissions
- next_allowed_actions

Frontend should not need to reconstruct core Builder truths
from ambiguous partial responses.


# ============================================================
# 15. ERROR / BLOCKING RESPONSE RULE
# ============================================================

Builder APIs must distinguish:

- invalid_request
- permission_denied
- validation_blocked
- state_conflict
- dependency_unresolved
- policy_blocked
- not_found

Validation-blocked responses should expose:
- blocking_count
- affected_scope_summary
- validation_result_ref where applicable

The frontend must be able to tell
whether user action failed due to:
- missing linkage
- missing save
- missing validation
- policy prohibition
- permission issue


# ============================================================
# 16. ROLE-AWARE ACCESS RULE
# ============================================================

API access must respect Builder roles.

owner:
- full Builder access

editor:
- project editing access
- asset editing access
- preview access
- validation trigger access
- limited export rights depending on policy

reviewer:
- read access
- validation visibility
- comment access
- no unrestricted mutation by default

publisher:
- export/submission access
- approval-facing visibility
- no unrestricted authoring mutation by default

APIs must not use screen visibility
as a substitute for permission control.


# ============================================================
# 17. FINAL INTERFACE RULE
# ============================================================

Game Builder must expose explicit API groups
for every primary Builder domain.

Core summary:

- project APIs manage authoring units
- template APIs enable template-first creation
- block APIs handle structured editing
- revision/autosave APIs preserve save layers
- asset APIs manage Builder-owned material assets
- preview APIs launch sandbox sessions
- validation APIs expose formal diagnostics
- export APIs create package candidates
- submission APIs create publish handoff
- collaboration APIs manage role-aware teamwork
