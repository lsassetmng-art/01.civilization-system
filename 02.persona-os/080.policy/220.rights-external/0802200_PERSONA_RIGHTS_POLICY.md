# ============================================================
# PERSONA RIGHTS POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for persona rights lifecycle.

policy_rules:
- authority, ownership, and contract basis must remain explicit
- suspended, revoked, expired, transferred, or reversed states must remain explicit
- duplicate effective transfer must be prevented
- persona rights truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 ownership validity
4 contract validity
5 idempotency basis validity
6 execution eligibility
