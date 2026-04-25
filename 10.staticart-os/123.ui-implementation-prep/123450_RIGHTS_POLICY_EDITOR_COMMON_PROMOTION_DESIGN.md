# ============================================================
# RIGHTS POLICY EDITOR COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Rights Policy Editor Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Rights Policy Editor Common
as a reusable policy-editing feature family
for rights-aware asset and content applications.

canonical_responsibility:
- edit exhibition permission
- edit derivative permission
- edit commercial permission
- edit region scope
- edit age policy or access-policy summary
- expose policy validation summary
- normalize rights-policy editing state for consumer apps

not_responsible_for:
- entitlement resolution exact logic
- enforcement runtime ownership
- StaticArtOS-specific access model ownership
- sales offer logic
- subscription rule logic

reuse_scope:
- rights-aware content applications
- asset-management applications
- creator applications
- policy-driven visibility applications
- publishing applications

required_inputs:
- target_asset_or_policy_id
- policy_profile
- current_policy_payload
- policy_dimension_set
- validation_profile
- permission_context

emitted_events:
- policy_edit_started
- policy_field_changed
- policy_validation_failed
- policy_validation_passed
- policy_save_requested
- policy_saved
- policy_save_failed
- policy_edit_cancelled

state_model:
- policy_pristine
- policy_editing
- policy_dirty
- policy_validation_failed
- policy_ready_to_save
- policy_saving
- policy_saved
- policy_save_failed
- policy_edit_cancelled

ui_boundary:
- policy section editor
- permission toggle/select controls
- scope editor hooks
- validation summary
- unsaved-change visibility

promotion_caution:
- do not merge with permission guard base
- do not absorb entitlement runtime logic
- do not merge with sales/subscription domain logic
- do not hard-code StaticArtOS-specific rights wording

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
