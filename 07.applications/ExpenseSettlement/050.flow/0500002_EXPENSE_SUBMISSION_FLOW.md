# ============================================================
# EXPENSE SUBMISSION FLOW
# ============================================================

status: canonical
layer: flow
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

flow:
1. create draft
2. add one or more expense items
3. attach required evidence
4. validate policy-required fields
5. submit explicitly
6. lock submit snapshot
