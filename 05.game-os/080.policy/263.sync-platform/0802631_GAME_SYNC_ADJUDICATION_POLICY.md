# ============================================================
# GAME SYNC ADJUDICATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS sync adjudication lifecycle.

policy_rules:
- accepted save state must be derived only from validated sync envelopes
- conflict detection and conflict resolution basis must remain explicit
- superseded or invalidated save states must remain explicit
- entitlement continuity and save lineage must remain preserved
- sync adjudication truth must remain canonical

evaluation_order:
1 envelope validity
2 snapshot lineage validity
3 player-title continuity validity
4 conflict validity
5 execution eligibility
