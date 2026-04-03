# ============================================================
# CIVILIZATION LOAN POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for loans and debt.

policy_rules:
- loan identity and approval basis must remain explicit
- default and restructuring must remain explicit
- due and overdue states must not be hidden
- loan and debt truth must remain canonical

evaluation_order:
1 contract validity
2 approval basis validity
3 credit basis validity
4 execution eligibility
