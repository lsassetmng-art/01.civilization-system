# ============================================================
# CIVILIZATION MIGRATION ENFORCEMENT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for removal and migration enforcement.

policy_rules:
- order, authority, and execution identity must remain explicit
- stayed, reversed, or failed removal states must remain explicit
- duplicate effective execution must be prevented
- migration-enforcement truth must remain canonical

evaluation_order:
1 target validity
2 order validity
3 authority validity
4 idempotency basis validity
5 execution eligibility
