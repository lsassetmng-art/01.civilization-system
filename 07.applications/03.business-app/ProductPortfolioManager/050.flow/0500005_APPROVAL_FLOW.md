# ============================================================
# APPROVAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. create approval request
2. enter pending queue
3. approver reviews target detail
4. approver chooses:
   - approve
   - reject
   - send back
   - hold
5. persist decision
6. reflect resulting state in target entity
