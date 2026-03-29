# ============================================================
# persona_builder_visual_manifest_candidate
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent Builder-side visual manifest candidate
for runtime and release preparation.


# PRIMARY KEY

- persona_builder_visual_manifest_candidate_id


# FIELDS

- persona_builder_visual_manifest_candidate_id
- target_persona_ref
- visual_avatar_ref
- asset_binding_set_ref
- state_expression_map_ref
- state_animation_map_ref
- anchor_metadata_ref
- manifest_status
- summary
- created_at
- updated_at


# STATUS ENUM

- draft
- validated
- invalid
- approved
- publish_ready
- archived
