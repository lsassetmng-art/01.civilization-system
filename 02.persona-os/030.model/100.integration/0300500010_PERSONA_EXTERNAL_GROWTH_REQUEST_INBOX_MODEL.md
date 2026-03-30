# ============================================================
# PERSONA EXTERNAL GROWTH REQUEST INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound growth requests received from external OS domains.

role:
Canonical receive model for external growth requests.
This model stores external intake state, not Persona truth.

primary_key:
- inbox_request_id

natural_key:
- source_os
- source_event_id

fields:
- inbox_request_id
- source_event_id
- source_os
- source_company_id
- source_user_id
- persona_id
- growth_event_type
- growth_context_projection
- projection_hash
- source_projection_version
- request_status
- request_idempotency_key
- correlation_id
- causation_id
- received_at
- consumed_at
- dead_lettered_at
- last_error_code
- last_error_message
- consume_attempt_count
- created_at
- updated_at

source_os_enum:
- business-os
- life-os
- game-os
- streaming-os
- other-approved-os

request_status_enum:
- pending
- consuming
- consumed
- rejected
- failed
- dead_lettered
- ignored_duplicate

state_transition:
- pending -> consuming
- consuming -> consumed
- consuming -> rejected
- consuming -> failed
- failed -> consuming
- failed -> dead_lettered
- pending -> ignored_duplicate

duplicate_rule:
The same source_os + source_event_id must not produce duplicate effective growth application.

idempotency_rule:
request_idempotency_key must suppress duplicate effective processing
even when transport retries occur.

truth_boundary:
External OS sends growth projection only.
Persona truth must never be overwritten directly from inbox payload.

source_os_notes:
business-os:
- business milestone or quality projection
life-os:
- life continuity or condition projection
game-os:
- progression or interaction projection
streaming-os:
- stream continuity or audience interaction projection
