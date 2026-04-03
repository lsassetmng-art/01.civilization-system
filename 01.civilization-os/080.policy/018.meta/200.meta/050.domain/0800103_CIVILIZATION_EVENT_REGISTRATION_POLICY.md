# ============================================================
# CIVILIZATION EVENT REGISTRATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for civilization event registration.

policy_rules:
- event identity must be explicit
- event lineage must be explicit when reflected
- duplicate effective registration must be prevented
- event truth and reflected event state must remain distinguishable

idempotency_rule:
event_domain + event_code + correlation_id should suppress duplicate effective registration where applicable.
