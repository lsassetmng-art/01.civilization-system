# ============================================================
# GAME TITLE TRANSFER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for game title transfer lifecycle.

policy_rules:
- seller owner-class change is prohibited and out of scope for GameOS transfer
- transfer unit must be game title and linked marketplace product, not seller identity
- approved title transfer may reassign future publishing responsibility only
- past commerce and ledger history remain with source seller
- entitlement continuity for already entitled users must be preserved
- duplicate effective title transfer must be prevented
- game title transfer truth must remain canonical

evaluation_order:
1 source seller validity
2 target seller validity
3 title validity
4 linked marketplace transfer validity
5 release reassignment validity
6 entitlement continuity validity
7 idempotency basis validity
8 execution eligibility
