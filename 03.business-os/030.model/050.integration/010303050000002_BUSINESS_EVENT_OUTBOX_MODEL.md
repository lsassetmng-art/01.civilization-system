# ============================================================
# BUSINESS EVENT OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound integration events emitted from BusinessOS.

role:
Canonical dispatch queue for Business-originated sync events.

primary_key:
- outbox_event_id

natural_key:
- event_idempotency_key

fields:
- outbox_event_id
- event_type
- aggregate_type
- aggregate_id
- company_id
- business_user_id
- target_system
- payload
- payload_hash
- dispatch_status
- retry_count
- next_retry_at
- last_error_code
- last_error_message
- correlation_id
- causation_id
- event_idempotency_key
- created_at
- dispatched_at
- updated_at

dispatch_status_enum:
- pending
- dispatching
- dispatched
- failed
- dead_lettered
- cancelled

rules:
- all outbound Persona sync events must pass through this outbox
- event_idempotency_key must prevent duplicate dispatch side effects
- dispatched payload must be immutable after successful send
- retry_count increments only on real dispatch attempts
