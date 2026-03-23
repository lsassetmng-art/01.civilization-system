# ============================================================
# BUSINESS SYNC EVENT INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound sync results received by BusinessOS from PersonaOS.

role:
Canonical receive queue for Persona-originated sync results.

primary_key:
- inbox_event_id

natural_key:
- source_event_id

fields:
- inbox_event_id
- source_event_id
- source_system
- sync_event_type
- company_id
- business_user_id
- persona_id
- payload
- payload_hash
- consume_status
- consume_attempt_count
- last_error_code
- last_error_message
- correlation_id
- causation_id
- received_at
- consumed_at
- created_at
- updated_at

sync_event_type_examples:
- persona_to_business_usage_permission_synced
- persona_to_business_access_state_synced
- persona_to_business_release_validity_synced
- persona_to_business_usage_binding_synced
- persona_to_business_trust_state_synced

consume_status_enum:
- pending
- consuming
- consumed
- failed
- dead_lettered
- ignored_duplicate

rules:
- Persona-originated sync results must land here before reflection
- duplicate source_event_id must be safely ignored or merged idempotently
- consume_status must be auditable
