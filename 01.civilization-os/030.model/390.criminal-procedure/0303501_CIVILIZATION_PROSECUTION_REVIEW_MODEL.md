# ============================================================
# CIVILIZATION PROSECUTION REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical prosecution review model.

model_type:
- criminal review truth model

primary_key:
- prosecution_review_id

natural_key:
- review_scope
- review_ref
- source_filing_ref

fields:
- prosecution_review_id
- review_scope
- review_ref
- source_filing_ref
- review_status
- reviewer_scope
- review_result
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- accepted
- declined
- superseded
- archived

truth_boundary:
Prosecution-review truth belongs to CivilizationOS criminal-procedure domain.
