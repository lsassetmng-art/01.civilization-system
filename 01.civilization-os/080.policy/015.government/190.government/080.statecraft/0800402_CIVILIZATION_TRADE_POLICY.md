# ============================================================
# CIVILIZATION TRADE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for governed trade.

policy_rules:
- trade routes require explicit legal basis
- duplicate effective settlement must be prevented
- failed or reversed settlements must remain explicit
- settlement truth must remain canonical

evaluation_order:
1 route legality
2 settlement identity validity
3 idempotency basis validity
4 execution eligibility
