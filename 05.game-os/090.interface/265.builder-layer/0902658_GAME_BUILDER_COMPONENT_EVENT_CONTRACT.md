# ============================================================
# GAME BUILDER COMPONENT EVENT CONTRACT
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI component event contract of Game Builder.

This interface defines how major frontend components
communicate with Builder state and actions.

It covers:
- project selection events
- editor selection/change/save events
- asset selection/bind events
- preview launch/control events
- validation rerun/jump events
- export/submission action events


# ============================================================
# 1. EVENT CONTRACT PRINCIPLE
# ============================================================

Frontend component events must be explicit and domain-named.

Component events should describe:
- what happened
- which Builder object it applies to
- whether it is UI-only or domain-significant


# ============================================================
# 2. PROJECT EVENTS
# ============================================================

Examples:
- project_selected
- project_created
- project_archived
- template_selected_for_creation

Suggested payload fields:
- project_code
- workspace_code
- template_profile_code where applicable


# ============================================================
# 3. EDITOR EVENTS
# ============================================================

Examples:
- block_selected
- block_created
- block_updated
- block_reordered
- block_cloned
- block_archived
- save_requested
- autosave_triggered

Suggested payload fields:
- project_code
- block_id
- parent_block_id where applicable
- correlation_id


# ============================================================
# 4. ASSET EVENTS
# ============================================================

Examples:
- asset_selected
- asset_uploaded
- asset_saved
- asset_variant_generated
- asset_bound
- asset_unbound

Suggested payload fields:
- project_code
- asset_ref
- target_scope_ref where applicable


# ============================================================
# 5. PREVIEW EVENTS
# ============================================================

Examples:
- preview_requested
- preview_session_created
- preview_action_executed
- preview_reset_requested
- preview_discard_requested

Suggested payload fields:
- project_code
- preview_session_id
- preview_basis
- preview_mode


# ============================================================
# 6. VALIDATION EVENTS
# ============================================================

Examples:
- validation_requested
- validation_result_received
- validation_finding_selected
- validation_jump_requested

Suggested payload fields:
- project_code
- validation_result_ref
- validation_stage
- finding_id where applicable


# ============================================================
# 7. EXPORT / SUBMISSION EVENTS
# ============================================================

Examples:
- export_readiness_requested
- export_requested
- export_result_received
- submission_readiness_requested
- submission_requested
- submission_result_received

Suggested payload fields:
- project_code
- revision_ref or export_package_code
- submission_request_ref where applicable


# ============================================================
# 8. FINAL INTERFACE RULE
# ============================================================

Builder component events must remain explicit and domain-aligned.

Core summary:

- use domain-named events
- include relevant Builder object identity
- distinguish UI-only events from lifecycle-significant events
