# ============================================================
# CIVILIZATION PAYROLL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for payroll.

policy_rules:
- payroll identity and worker scope must remain explicit
- duplicate effective payroll must be prevented
- reversed or failed payroll must remain explicit
- payroll truth must remain canonical

evaluation_order:
1 payroll identity validity
2 worker scope validity
3 idempotency basis validity
4 execution eligibility
