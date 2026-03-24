# ============================================================
# CIVILIZATION EXTERNAL COMPATIBILITY REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external compatibility review model.

model_type:
- boundary review truth model

primary_key:
- external_compatibility_review_id

natural_key:
- review_scope
- review_ref
- contract_code

fields:
- external_compatibility_review_id
- review_scope
- review_ref
- contract_code
- review_status
- compatibility_status
- reviewer_scope
- source_state_version
- correlation_id
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
External-compatibility review truth belongs to CivilizationOS interface-governance domain.
