# ============================================================
# persona_builder_draft
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent the canonical draft truth
used only inside Persona Builder space.

This model is not final Persona mutable truth.


# MODEL TYPE

builder draft model


# PRIMARY KEY

- persona_builder_draft_id


# NATURAL KEY

- draft_scope
- draft_code
- draft_version


# FIELDS

- persona_builder_draft_id
- target_persona_ref
- draft_scope
- draft_code
- draft_version
- draft_status
- creator_identity
- latest_change_set_ref
- latest_validation_result_ref
- latest_approval_request_ref
- latest_publish_candidate_ref
- audit_bundle_ref
- created_at
- updated_at


# STATUS ENUM

- draft
- editing
- validated
- validation_failed
- approval_requested
- approval_rejected
- approved
- publish_prepared
- archived


# TRUTH BOUNDARY

This model belongs only to Builder domain.
It must not replace PersonaOS final mutable truth.
