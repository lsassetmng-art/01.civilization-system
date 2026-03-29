# ============================================================
# GAME DISTRIBUTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for game distribution lifecycle.

policy_rules:
- developer, release, build, package, manifest, and compatibility basis must remain explicit
- published, superseded, suspended, revoked, or archived states must remain explicit
- distribution traceability must remain preserved
- game distribution truth must remain canonical
