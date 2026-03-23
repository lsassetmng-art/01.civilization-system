# ============================================================
# PERSONA EXTERNAL SYNC OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound sync results emitted by PersonaOS to external OS domains.

fields:
- outbox_event_id
- target_os
- sync_event_type
- payload
- dispatch_status
- retry_count
- correlation_id
- causation_id
- created_at
