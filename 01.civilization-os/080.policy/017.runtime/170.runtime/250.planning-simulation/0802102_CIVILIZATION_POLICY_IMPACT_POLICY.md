# ============================================================
# CIVILIZATION POLICY IMPACT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for policy-impact estimates.

policy_rules:
- source policy, scenario, and lineage basis must remain explicit
- superseded or invalidated estimates must remain explicit
- decision-support traceability must remain preserved
- policy-impact truth must remain canonical

evaluation_order:
1 source-policy validity
2 scenario validity
3 baseline and lineage validity
4 execution eligibility
