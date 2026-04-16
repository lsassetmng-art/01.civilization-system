# ============================================================
# EXPENSE SETTLEMENT FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

major_flows:
- create draft
- attach receipt
- submit
- review / return / approve
- publish to ERP
- retry failed publication
- settle and confirm
