# ============================================================
# CIVILIZATION EXECUTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for enforcement execution.

policy_rules:
- award basis, stay basis, and execution identity must remain explicit
- failed, stayed, reversed, or fulfilled executions must remain explicit
- duplicate effective execution must be prevented
- execution truth must remain canonical

evaluation_order:
1 source-award validity
2 stay-order validity
3 execution identity validity
4 idempotency basis validity
5 execution eligibility
