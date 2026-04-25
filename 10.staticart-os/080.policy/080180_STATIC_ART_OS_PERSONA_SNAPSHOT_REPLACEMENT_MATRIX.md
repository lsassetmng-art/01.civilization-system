# ============================================================
# STATIC ART OS PERSONA SNAPSHOT REPLACEMENT MATRIX
# ============================================================

status: active-matrix
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Map forbidden persona-core style storage to the allowed
snapshot-consumption replacement model for StaticArtOS.

replacement_matrix:
  forbidden:
    - persona_core
    - persona_profile_canonical
    - persona_state
    - persona_emotion
    - persona_growth
    - persona_memory
    - persona_signature_canonical
    - persona_revocation_canonical
    - persona_rights_canonical
    - persona_contract_canonical
  replace_with:
    - asset_creator_persona_ref
    - asset_creator_signed_snapshot_ref
    - asset_persona_applied_snapshot_history
    - asset_public_display_snapshot_ref
    - asset_exhibition_display_snapshot_ref
    - asset_local_view_config
    - asset_creator_display_projection

field_guidance:
  required_reference_fields:
    - asset_id
    - persona_id
    - snapshot_id
    - signed_snapshot_id
    - applied_snapshot_id
    - source_event_id
    - applied_at
    - expires_at

  allowed_local_fields:
    - display_mode
    - local_view_config_json
    - render_hint_json
    - app_local_overlay_state

  forbidden_local_fields:
    - mutable_emotion_state
    - mutable_growth_state
    - mutable_memory_body
    - signature_truth
    - revocation_truth
    - rights_truth
    - internal_parameter_truth

display_rule:
- public display uses signed snapshot basis
- exhibition display uses signed snapshot basis
- external display uses signed snapshot basis
- local style adjustments use local_view_config only

result_rule:
- StaticArtOS stores persona linkage and display application state only.
- StaticArtOS does not store persona internal truth.
