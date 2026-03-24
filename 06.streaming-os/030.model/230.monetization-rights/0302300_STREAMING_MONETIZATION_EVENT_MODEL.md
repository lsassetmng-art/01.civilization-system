# ============================================================
# STREAMING MONETIZATION EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming monetization event model.

model_type:
- monetization truth model

primary_key:
- streaming_monetization_event_id

natural_key:
- event_scope
- event_ref
- correlation_id

fields:
- streaming_monetization_event_id
- event_scope
- event_ref
- correlation_id
- event_status
- session_ref
- monetization_summary
- source_state_version
- occurred_at
- created_at
- updated_at

event_status_enum:
- recorded
- settled
- reversed
- archived

truth_boundary:
Streaming monetization truth belongs to StreamingOS monetization-rights domain.
