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

role:
Canonical dispatch queue for outbound usage and trust sync results.

primary_key:
- outbox_event_id

natural_key:
- event_idempotency_key

fields:
- outbox_event_id
- target_os
- target_company_id
- target_user_id
- sync_event_type
- payload
- payload_hash
- payload_contract_version
- dispatch_status
- retry_count
- next_retry_at
- dead_lettered_at
- last_error_code
- last_error_message
- source_persona_state_version
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

state_transition:
- pending -> dispatching
- dispatching -> dispatched
- dispatching -> failed
- failed -> dispatching
- failed -> dead_lettered
- pending -> cancelled

trigger_conditions:
- usage result contract built
- trust result contract built
- rebroadcast required after material Persona-side state change
- target-specific repair sync approved

idempotency_rule:
event_idempotency_key must suppress duplicate effective sends.

immutability_rule:
Successfully dispatched payload must be immutable.

dead_letter_conditions:
- unrecoverable contract incompatibility
- unauthorized target
- retry budget exhausted with terminal classification
