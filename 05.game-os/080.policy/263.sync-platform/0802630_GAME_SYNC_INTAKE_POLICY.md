# ============================================================
# GAME SYNC INTAKE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS sync intake lifecycle.

policy_rules:
- title, player, device, entitlement, and attestation basis must remain explicit
- save, achievement, ranking, replay, telemetry, and attestation submissions are untrusted until validated
- duplicate effective sync intake must be prevented
- accepted and rejected sync states must remain explicit
- sync intake truth must remain canonical

evaluation_order:
1 title validity
2 player validity
3 device validity
4 entitlement validity
5 attestation validity
6 idempotency basis validity
7 execution eligibility
