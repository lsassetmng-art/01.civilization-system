# ============================================================
# GAME PROGRESSION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for progression and reward lifecycle.

policy_rules:
- player, quest, reward, crafting, and ranking basis must remain explicit
- duplicate effective reward or crafting actions must be prevented
- failed, reversed, retired, locked, or invalidated states must remain explicit
- game progression truth must remain canonical

evaluation_order:
1 target validity
2 player validity
3 quest validity
4 reward validity
5 idempotency basis validity
6 execution eligibility
