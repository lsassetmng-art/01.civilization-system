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

fields:
- inbox_request_id
- source_os
- source_user_id
- persona_id
- growth_event_type
- growth_context_projection
- request_status
- correlation_id
- causation_id
- created_at
- consumed_at
