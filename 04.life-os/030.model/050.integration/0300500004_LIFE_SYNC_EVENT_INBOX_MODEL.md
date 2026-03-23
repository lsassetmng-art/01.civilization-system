# ============================================================
# LIFE SYNC EVENT INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound sync results received by LifeOS from PersonaOS.

fields:
- inbox_event_id
- sync_event_type
- source_system
- payload
- consume_status
- correlation_id
- created_at
- consumed_at
