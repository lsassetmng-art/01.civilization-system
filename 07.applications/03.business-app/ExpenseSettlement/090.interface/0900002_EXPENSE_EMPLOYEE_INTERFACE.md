# ============================================================
# EXPENSE EMPLOYEE INTERFACE
# ============================================================

status: canonical
layer: interface
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

screens:
- home
- draft list
- new expense
- report detail
- receipt attach
- history

ui_principles:
- minimal taps
- clear state labels
- approval state and ERP state shown separately
- multilingual text rendering is required
- amount and currency must be displayed together without ambiguity
- phone layout and tablet/pc layout may differ, but behavior meaning must match
