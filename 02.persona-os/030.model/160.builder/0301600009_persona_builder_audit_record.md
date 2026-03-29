# ============================================================
# persona_builder_audit_record
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent auditable Builder actions.


# PRIMARY KEY

- persona_builder_audit_record_id


# FIELDS

- persona_builder_audit_record_id
- target_draft_id
- actor_identity
- action_type
- action_scope
- action_summary
- related_validation_ref
- related_approval_ref
- related_publish_candidate_ref
- occurred_at
- created_at
