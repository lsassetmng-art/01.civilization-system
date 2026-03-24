# ============================================================
# CIVILIZATION RESOURCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for governed resource movement.

policy_rules:
- resource movement requires explicit basis
- duplicate effective postings must be prevented
- sanction-held resources must remain explicit
- resource ledger truth must remain canonical

idempotency_rule:
ledger_ref-based duplicate suppression is required where applicable.
