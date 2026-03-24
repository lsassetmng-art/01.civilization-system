# ============================================================
# CIVILIZATION MARKET POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for governed markets.

policy_rules:
- order and execution identity must remain explicit
- duplicate effective execution must be prevented
- suspended listings must not remain implicitly active
- market truth must remain canonical

evaluation_order:
1 listing or market scope validity
2 order identity validity
3 idempotency basis validity
4 execution eligibility
