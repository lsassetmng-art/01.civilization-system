# ============================================================
# persona_builder_asset_binding
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent Builder-side visual asset binding.


# PRIMARY KEY

- persona_builder_asset_binding_id


# FIELDS

- persona_builder_asset_binding_id
- bound_persona_ref
- visual_avatar_ref
- visual_asset_ref
- binding_role
- slot_ref
- state_scope
- expression_scope
- animation_scope
- binding_status
- created_at
- updated_at


# STATUS ENUM

- binding_draft
- binding_incomplete
- binding_validated
- binding_invalid
- binding_approved
- binding_publish_ready
- archived
