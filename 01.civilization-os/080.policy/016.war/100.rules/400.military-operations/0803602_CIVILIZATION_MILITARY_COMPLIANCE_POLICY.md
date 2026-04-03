# ============================================================
# CIVILIZATION MILITARY COMPLIANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for ceasefire monitoring and ROE violations.

policy_rules:
- ceasefire, ROE, and evidence basis must remain explicit
- breached, actionable, or resolved compliance states must remain explicit
- military-compliance traceability must remain preserved
- military-compliance truth must remain canonical

evaluation_order:
1 order validity
2 ceasefire validity
3 ROE validity
4 evidence validity
5 execution eligibility
