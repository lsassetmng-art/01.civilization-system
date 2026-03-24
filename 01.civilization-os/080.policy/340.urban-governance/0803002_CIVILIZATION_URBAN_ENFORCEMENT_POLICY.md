# ============================================================
# CIVILIZATION URBAN ENFORCEMENT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for urban enforcement.

policy_rules:
- zoning, violation, and order basis must remain explicit
- cured, escalated, fulfilled, or revoked enforcement states must remain explicit
- urban-enforcement traceability must remain preserved
- urban-enforcement truth must remain canonical

evaluation_order:
1 target validity
2 zoning validity
3 violation validity
4 order validity
5 execution eligibility
