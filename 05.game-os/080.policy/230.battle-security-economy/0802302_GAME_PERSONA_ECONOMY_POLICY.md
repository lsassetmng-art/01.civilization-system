# ============================================================
# GAME PERSONA ECONOMY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for persona binding, package projection, purchase entitlement, and economy settlement lifecycle.

policy_rules:
- player, persona, package, purchase, and contract basis must remain explicit
- duplicate effective projection or settlement must be prevented
- suspended, revoked, expired, failed, or reversed states must remain explicit
- game persona-economy truth must remain canonical

evaluation_order:
1 target validity
2 player validity
3 persona validity
4 package validity
5 purchase validity
6 idempotency basis validity
7 execution eligibility
