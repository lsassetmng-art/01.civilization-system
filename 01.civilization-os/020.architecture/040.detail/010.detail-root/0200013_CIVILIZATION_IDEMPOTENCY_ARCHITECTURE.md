# ============================================================
# CIVILIZATION IDEMPOTENCY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define architecture-level idempotency rules.

required_idempotency_bases:
- source_event_id where applicable
- request_idempotency_key where applicable
- event_idempotency_key where applicable
- target reflection basis where applicable

rules:
- retries must reuse the same idempotency basis
- duplicate effective mutation must be prevented
- idempotency must be explicit, not inferred
- idempotency failure must be observable
