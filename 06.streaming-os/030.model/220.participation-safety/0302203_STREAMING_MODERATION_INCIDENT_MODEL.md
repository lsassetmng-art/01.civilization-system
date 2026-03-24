# ============================================================
# STREAMING MODERATION INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming moderation incident model.

model_type:
- moderation incident truth model

primary_key:
- streaming_moderation_incident_id

natural_key:
- incident_scope
- incident_ref
- correlation_id

fields:
- streaming_moderation_incident_id
- incident_scope
- incident_ref
- correlation_id
- incident_status
- session_ref
- incident_summary
- source_state_version
- occurred_at
- created_at
- updated_at

incident_status_enum:
- recorded
- under_review
- actionable
- resolved
- archived

truth_boundary:
Streaming moderation incident truth belongs to StreamingOS participation-safety domain.
