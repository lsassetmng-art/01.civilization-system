# ============================================================
# PERSONA EXTERNAL CONTRACT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for external contracts and compatibility.

policy_rules:
- producer, consumer, schema, and compatibility basis must remain explicit
- superseded or revoked contract states must remain explicit
- contract traceability must remain preserved
- external contract truth must remain canonical

evaluation_order:
1 target validity
2 producer validity
3 consumer validity
4 schema validity
5 compatibility validity
6 execution eligibility
