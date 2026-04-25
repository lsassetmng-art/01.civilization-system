# ============================================================
# BUSINESS PERSONA CONSUMER ACK EXACT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix exact consumer acknowledgment behavior for PersonaOS downstream handling.

consumer_ack_response_fields:
- event_id
- consumer_system = PersonaOS
- ack_status
- processed_at
- idempotency_key_echo when applicable
- consumer_trace_id when applicable
- error_code when applicable
- error_message when applicable

ack_status_enum:
- accepted
- duplicate_ignored
- rejected_retryable
- rejected_terminal

ack_rule:
- accepted
  - PersonaOS has successfully applied downstream mirror / apply-ready consequence
- duplicate_ignored
  - event already consumed and no duplicate downstream mutation was produced
- rejected_retryable
  - transient failure, producer may retry
- rejected_terminal
  - contract or payload issue, producer should not blind-retry indefinitely

producer_reaction_rule:
- accepted -> mark delivered
- duplicate_ignored -> mark delivered
- rejected_retryable -> keep retry path open
- rejected_terminal -> move toward dead-letter handling

result:
- Business Persona consumer ack exact contract fixed as a canonical meta record.
