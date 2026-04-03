# ============================================================
# CIVILIZATION COMPLIANCE REVIEW RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compliance review record model.

model_type:
- governance review model

primary_key:
- compliance_review_record_id

natural_key:
- review_scope
- review_code
- correlation_id

fields:
- compliance_review_record_id
- review_scope
- review_code
- review_status
- governing_rule_ref
- target_scope
- reviewer_identity
- review_basis
- source_state_version
- correlation_id
- causation_id
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- passed
- failed
- waived
- superseded

truth_boundary:
Compliance review truth belongs to CivilizationOS governance review domain.
