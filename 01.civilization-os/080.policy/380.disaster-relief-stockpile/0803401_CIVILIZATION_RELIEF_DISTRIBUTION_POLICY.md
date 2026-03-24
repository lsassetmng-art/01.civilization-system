# ============================================================
# CIVILIZATION RELIEF DISTRIBUTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for emergency distribution.

policy_rules:
- release, target group, priority, and route basis must remain explicit
- duplicate effective distribution must be prevented
- failed or reversed relief actions must remain explicit
- relief distribution truth must remain canonical

evaluation_order:
1 release validity
2 target-group validity
3 priority validity
4 route validity
5 idempotency basis validity
6 execution eligibility
