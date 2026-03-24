# ============================================================
# CIVILIZATION GOVERNANCE QUEUE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for governance queues.

policy_rules:
- queue status must remain explicit
- blocked queues must not process silently
- replayed governance items require explicit eligibility
- duplicate effective queue processing must be prevented

idempotency_rule:
The same governance queue item must not produce duplicate effective processing.
