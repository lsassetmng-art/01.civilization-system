# ============================================================
# CIVILIZATION IDEMPOTENCY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for idempotent processing.

policy_rules:
- retries must reuse the same idempotency basis
- duplicate effective mutation must be prevented
- duplicate intake must be observable
- missing idempotency basis must block retry-safe execution

required_bases:
- source_event_id where applicable
- request_idempotency_key where applicable
- event_idempotency_key where applicable
