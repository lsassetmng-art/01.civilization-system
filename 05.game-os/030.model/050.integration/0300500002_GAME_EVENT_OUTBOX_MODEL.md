# ============================================================
# GAME EVENT OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound integration events emitted from GameOS.

fields:
- outbox_event_id
- event_type
- aggregate_type
- aggregate_id
- payload
- dispatch_status
- retry_count
- correlation_id
- causation_id
- created_at
