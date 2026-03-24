# ============================================================
# GAME LIFECYCLE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for shared lifecycle governance in GameOS.

policy_rules:
- transition basis, terminal basis, and authority basis must remain explicit
- invalid, suspended, superseded, or archived states must remain explicit
- lifecycle traceability must remain preserved
- lifecycle truth must remain canonical
