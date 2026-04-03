# ============================================================
# CIVILIZATION ALERT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for breaches and alerts.

policy_rules:
- KPI threshold basis, severity, and affected scope must remain explicit
- acknowledged, mitigated, or cleared breaches must remain explicit
- alert traceability must remain preserved
- threshold-breach truth must remain canonical

evaluation_order:
1 KPI validity
2 threshold validity
3 observed-value validity
4 execution eligibility
