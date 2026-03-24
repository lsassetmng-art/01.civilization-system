# ============================================================
# CIVILIZATION RECEIPT FRAUD POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for receipt inspection and procurement fraud.

policy_rules:
- contract, delivery, inspection, and evidence basis must remain explicit
- rejected, escalated, or resolved fraud states must remain explicit
- enforcement traceability must remain preserved
- receipt and fraud truth must remain canonical

evaluation_order:
1 contract validity
2 delivery validity
3 inspection validity
4 evidence validity
5 execution eligibility
