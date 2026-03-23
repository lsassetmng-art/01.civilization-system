# ============================================================
# STREAMING PERSONA GROWTH REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Track Streaming-originated growth synchronization state.

fields:
- streaming_user_id
- persona_id
- last_growth_request_id
- last_growth_event_type
- last_growth_sent_at
- last_growth_result_status
- last_growth_applied_at
