# ============================================================
# MARKETPLACE GAME LISTING POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for marketplace game listing lifecycle.

policy_rules:
- seller, product, listing, title, purchase, and linkage basis must remain explicit
- purchase revenue and GameOS execution entitlement must remain separated
- duplicate effective purchase-to-entitlement linkage must be prevented
- published, suspended, revoked, failed, or reversed states must remain explicit
- marketplace game listing truth must remain canonical

evaluation_order:
1 seller validity
2 product validity
3 listing validity
4 game title validity
5 purchase validity
6 idempotency basis validity
7 execution eligibility
