# ============================================================
# BUSINESS EVENT DISPATCH POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for business event dispatch and intake.

policy_rules:
- contract, routing, payload, and dispatch identity basis must remain explicit
- duplicate effective dispatch or consumption must be prevented
- failed or dead-lettered event states must remain explicit
- event dispatch truth must remain canonical

evaluation_order:
1 contract validity
2 routing validity
3 payload validity
4 dispatch identity validity
5 idempotency basis validity
6 execution eligibility
