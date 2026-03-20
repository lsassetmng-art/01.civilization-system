# ============================================================
# BUDGET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Budget allocates treasury resources.

rules:
- allocation must be explicit
- overspending must be prevented

event_flow:
- budget_proposed
- budget_approved
- spending_executed

final_rule:
Budget must be controlled and auditable.
