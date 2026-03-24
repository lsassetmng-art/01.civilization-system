# ============================================================
# CIVILIZATION EVENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define event-facing interface requirements.

required_fields:
- event_domain
- event_code
- correlation_id
- source_domain
- payload_hash where applicable

idempotency_rule:
Event-facing interfaces must expose enough identity to support duplicate suppression.
