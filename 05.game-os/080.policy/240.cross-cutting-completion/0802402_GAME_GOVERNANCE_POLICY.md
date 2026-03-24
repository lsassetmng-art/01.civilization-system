# ============================================================
# GAME GOVERNANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for approval, ownership boundary,
compatibility, and audit governance in GameOS.

policy_rules:
- authority basis, ownership boundary, and compatibility basis must remain explicit
- superseded, invalidated, revised, or archived states must remain explicit
- governance traceability must remain preserved
- governance truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 ownership-boundary validity
4 compatibility validity
5 execution eligibility
