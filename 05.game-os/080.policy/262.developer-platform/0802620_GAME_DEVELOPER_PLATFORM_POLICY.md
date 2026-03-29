# ============================================================
# GAME DEVELOPER PLATFORM POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS developer-platform lifecycle.

policy_rules:
- seller, workspace, runtime profile, builder linkage, validation acceptance, and publish activation basis must remain explicit
- publish activation without accepted validation is prohibited
- builder-backed package linkage must remain explicit for platform-managed games
- rejected, failed, suspended, or archived states must remain explicit
- developer-platform truth must remain canonical

evaluation_order:
1 seller validity
2 workspace validity
3 runtime profile validity
4 builder linkage validity
5 release validity
6 validation acceptance validity
7 activation validity
8 idempotency basis validity
9 execution eligibility
