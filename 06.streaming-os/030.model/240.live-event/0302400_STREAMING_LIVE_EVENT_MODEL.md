# ============================================================
# STREAMING LIVE EVENT MODEL
# ============================================================

status: canonical
layer: model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming live event model.

model_type:
- live event truth model

primary_key:
- streaming_live_event_id

natural_key:
- live_event_scope
- live_event_code
- live_event_version

fields:
- streaming_live_event_id
- live_event_scope
- live_event_code
- live_event_version
- live_event_type
- live_event_status
- host_scope
- linked_channel_code
- linked_program_code
- linked_session_ref
- venue_ref
- city_ref
- nation_ref
- start_at
- end_at
- settlement_status
- created_at
- updated_at

live_event_status_enum:
- draft
- announced
- ticketing
- scheduled
- opening
- live
- paused
- completed
- cancelled
- archived

truth_boundary:
Live event truth belongs to StreamingOS.
