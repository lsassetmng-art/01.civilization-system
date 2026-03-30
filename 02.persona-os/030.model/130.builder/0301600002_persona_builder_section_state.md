# ============================================================
# persona_builder_section_state
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent per-section draft state inside Builder.


# PRIMARY KEY

- persona_builder_section_state_id


# FIELDS

- persona_builder_section_state_id
- persona_builder_draft_id
- section_scope
- section_status
- section_version
- material_change_flag
- latest_change_set_ref
- latest_validation_result_ref
- last_edited_at
- updated_at


# SECTION STATUS ENUM

- empty
- in_progress
- structurally_complete
- validated
- invalid
- approval_sensitive
- archived
