# ============================================================
# CIVILIZATION GATEWAY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for gateway dispatch and consume.

policy_rules:
- contract compatibility and permission basis must remain explicit
- duplicate effective dispatch or consume must be prevented
- failed or reversed gateway actions must remain explicit
- gateway truth must remain canonical

evaluation_order:
1 target-interface validity
2 contract-version validity
3 compatibility status validity
4 permission basis validity
5 idempotency basis validity
6 execution eligibility
