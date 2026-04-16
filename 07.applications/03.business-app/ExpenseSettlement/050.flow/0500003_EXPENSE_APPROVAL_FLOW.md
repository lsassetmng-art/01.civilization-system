# ============================================================
# EXPENSE APPROVAL FLOW
# ============================================================

status: canonical
layer: flow
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

flow:
1. reviewer receives submitted report
2. reviewer reads items and evidence
3. reviewer approves, returns, or rejects
4. return/reject reason is mandatory when negative
5. approved report becomes publish-eligible
