# ============================================================
# GAME DEVICE DELIVERY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for device registration and delivery lifecycle.

policy_rules:
- device, entitlement, package, attestation, and license basis must remain explicit
- suspended, revoked, expired, or archived states must remain explicit
- delivery traceability must remain preserved
- game device-delivery truth must remain canonical

evaluation_order:
1 target validity
2 device validity
3 entitlement validity
4 package validity
5 attestation validity
6 execution eligibility
