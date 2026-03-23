# ============================================================
# BUSINESS OUTBOX POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for BusinessOS outbound Persona-related
event dispatch.

policy_rules:
- all Business to Persona sync traffic must use outbox
- dispatched payload must be immutable
- correlation_id is required
- event_idempotency_key is required
- retries must be policy-controlled
- terminal failures must not loop forever
