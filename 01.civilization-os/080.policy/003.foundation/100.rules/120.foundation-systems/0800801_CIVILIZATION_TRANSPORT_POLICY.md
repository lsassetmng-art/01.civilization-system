# ============================================================
# CIVILIZATION TRANSPORT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for transport.

policy_rules:
- movement requires explicit corridor legality
- duplicate effective movement must be prevented
- blocked or revoked corridors must not remain silently active
- transport movement truth must remain canonical

evaluation_order:
1 corridor legality
2 movement identity validity
3 idempotency basis validity
4 execution eligibility
