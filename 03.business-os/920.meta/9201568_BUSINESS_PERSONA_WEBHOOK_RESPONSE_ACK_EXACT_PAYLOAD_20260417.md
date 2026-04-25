# ============================================================
# BUSINESS PERSONA WEBHOOK RESPONSE ACK EXACT PAYLOAD
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact webhook response and acknowledgment payload shape returned by PersonaOS.

response_required_fields:
- event_id
- consumer_system = PersonaOS
- ack_status
- processed_at
- idempotency_key_echo when applicable
- consumer_trace_id when applicable

response_optional_error_fields:
- error_code
- error_message
- retry_after_seconds when retryable

ack_status_enum:
- accepted
- duplicate_ignored
- rejected_retryable
- rejected_terminal

producer_interpretation_rule:
- accepted -> delivered
- duplicate_ignored -> delivered
- rejected_retryable -> retry path remains open
- rejected_terminal -> dead-letter or operator intervention path

transport_rule:
- response payload acknowledges downstream handling outcome
- response payload does not redefine Business truth

result:
- Webhook response and ack exact payload fixed as a canonical meta record.
