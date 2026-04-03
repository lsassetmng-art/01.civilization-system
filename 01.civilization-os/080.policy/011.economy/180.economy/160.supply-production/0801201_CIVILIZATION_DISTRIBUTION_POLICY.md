# ============================================================
# CIVILIZATION DISTRIBUTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for distribution.

policy_rules:
- batch identity and source inventory must remain explicit
- duplicate effective release must be prevented
- reversed or failed batches must remain explicit
- distribution truth must remain canonical

evaluation_order:
1 source inventory validity
2 batch identity validity
3 idempotency basis validity
4 execution eligibility
