# ============================================================
# CIVILIZATION ACCESS REVIEW RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical access review record model.

model_type:
- access review truth model

primary_key:
- access_review_record_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- access_review_record_id
- review_scope
- review_ref
- review_status
- target_record_scope
- reviewer_scope
- review_result
- source_state_version
- correlation_id
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- approved
- rejected
- superseded
- archived

truth_boundary:
Access-review truth belongs to CivilizationOS records-governance domain.
