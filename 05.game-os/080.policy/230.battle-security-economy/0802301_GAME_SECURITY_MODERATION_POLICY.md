# ============================================================
# GAME SECURITY MODERATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for anti-cheat, moderation, and replay lifecycle.

policy_rules:
- authority, evidence, player, and source-session basis must remain explicit
- actionable, resolved, applied, reversed, corrected, or invalidated states must remain explicit
- security traceability must remain preserved
- game security truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 evidence validity
4 player validity
5 source-session validity
6 execution eligibility
