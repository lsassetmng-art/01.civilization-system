# ============================================================
# STREAMING SAFETY REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming safety review model.

model_type:
- safety review truth model

primary_key:
- streaming_safety_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- streaming_safety_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- session_ref
- review_summary
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- completed
- superseded
- archived

truth_boundary:
Streaming safety review truth belongs to StreamingOS participation-safety domain.
