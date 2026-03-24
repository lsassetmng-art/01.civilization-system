# ============================================================
# GAME CORE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for game core lifecycle.

policy_rules:
- player, profile, session, roster, slot, and snapshot basis must remain explicit
- interrupted, removed, superseded, or archived states must remain explicit
- game traceability must remain preserved
- game core truth must remain canonical
