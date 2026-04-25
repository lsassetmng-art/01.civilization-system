# ============================================================
# PERSONA EXTERNAL COMPATIBILITY REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external compatibility review model.

model_type:
- contract review truth model

primary_key:
- persona_external_compatibility_review_id

natural_key:
- review_scope
- review_ref
- contract_code

fields:
- persona_external_compatibility_review_id
- review_scope
- review_ref
- contract_code
- review_status
- compatibility_status
- reviewer_scope
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- completed
- superseded
- archived

compatibility_status_enum:
- compatible
- limited
- incompatible

truth_boundary:
Persona compatibility review truth belongs to PersonaOS external-sync domain.
