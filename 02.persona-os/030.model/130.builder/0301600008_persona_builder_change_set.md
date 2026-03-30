# ============================================================
# persona_builder_change_set
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent a scoped set of edits
applied to a Builder draft.


# PRIMARY KEY

- persona_builder_change_set_id


# FIELDS

- persona_builder_change_set_id
- persona_builder_draft_id
- actor_identity
- section_scope
- change_summary
- material_change_flag
- prior_state_ref
- new_state_ref
- created_at
