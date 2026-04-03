# ============================================================
# CIVILIZATION MISINFORMATION REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical misinformation review model.

model_type:
- information integrity truth model

primary_key:
- misinformation_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- misinformation_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- target_content_ref
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
Misinformation-review truth belongs to CivilizationOS media-communication domain.
