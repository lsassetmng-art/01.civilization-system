# ============================================================
# CIVILIZATION LABOR ENFORCEMENT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for safety orders and employer sanctions.

policy_rules:
- violation, employer, and approval basis must remain explicit
- fulfilled or revoked enforcement states must remain explicit
- labor-enforcement traceability must remain preserved
- labor-enforcement truth must remain canonical

evaluation_order:
1 employer validity
2 violation validity
3 approval validity
4 execution eligibility
