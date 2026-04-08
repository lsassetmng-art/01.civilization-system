# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Travel expense handling is a bounded working-data and aggregation domain.

rules:
- travel expense starts as local working data
- monthly aggregation is a distinct step
- aggregation and ERP-facing submission remain distinct
- travel guidance result and official expense data remain distinct
