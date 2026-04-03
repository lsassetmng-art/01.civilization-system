# ============================================================
# CIVILIZATION FISCAL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for fiscal handling.

policy_rules:
- assessments and collections require explicit identity
- duplicate effective collection must be prevented
- reversed or cancelled collection must remain explicit
- fiscal truth must remain canonical

evaluation_order:
1 assessment validity
2 collection identity validity
3 idempotency basis validity
4 execution eligibility
