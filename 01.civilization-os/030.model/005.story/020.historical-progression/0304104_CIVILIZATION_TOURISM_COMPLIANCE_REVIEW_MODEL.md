# ============================================================
# CIVILIZATION TOURISM COMPLIANCE REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical tourism compliance review model.

model_type:
- tourism review truth model

primary_key:
- tourism_compliance_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- tourism_compliance_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- target_scope
- review_result
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- completed
- escalated
- superseded
- archived

truth_boundary:
Tourism-compliance truth belongs to CivilizationOS culture-tourism domain.
