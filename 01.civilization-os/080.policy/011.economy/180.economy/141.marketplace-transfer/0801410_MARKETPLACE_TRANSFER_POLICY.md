# ============================================================
# MARKETPLACE TRANSFER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for seller immutability and game-level transfer.

policy_rules:
- seller owner-class change is prohibited
- individual seller to company seller conversion is prohibited
- company seller to individual seller conversion is prohibited
- transfer unit must be marketplace product and linked game title, not seller identity
- past revenue ledger remains with source seller
- future commercial responsibility may move only through approved game-level transfer
- duplicate effective transfer must be prevented
- transfer truth must remain canonical

evaluation_order:
1 source seller validity
2 target seller validity
3 seller owner-class immutability validity
4 product validity
5 linked game title validity
6 idempotency basis validity
7 execution eligibility
