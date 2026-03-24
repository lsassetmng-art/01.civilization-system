# ============================================================
# CIVILIZATION ASYLUM REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical asylum review model.

model_type:
- protection review truth model

primary_key:
- asylum_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- asylum_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- applicant_scope
- protection_basis
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- submitted
- under_review
- approved
- rejected
- appealed
- archived

truth_boundary:
Asylum-review truth belongs to CivilizationOS migration-nationality domain.
