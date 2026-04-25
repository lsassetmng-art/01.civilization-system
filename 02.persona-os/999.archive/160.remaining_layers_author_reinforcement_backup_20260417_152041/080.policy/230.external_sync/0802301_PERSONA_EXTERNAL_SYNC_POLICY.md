# ============================================================
# PERSONA EXTERNAL SYNC POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for external sync intake and dispatch.

policy_rules:
- contract, target, payload, and sync identity basis must remain explicit
- duplicate effective dispatch or consumption must be prevented
- failed or dead-lettered sync states must remain explicit
- external sync truth must remain canonical

evaluation_order:
1 contract validity
2 target validity
3 payload validity
4 sync identity validity
5 idempotency basis validity
6 execution eligibility
