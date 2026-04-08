# ============================================================
# POCKET SECRETARY MONTHLY AGGREGATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents monthly aggregated totals for bounded business use.

fields:
- aggregation_id
- user_id
- aggregation_month
- aggregation_type
- total_amount
- item_count
- created_at
- updated_at

rules:
- monthly aggregation is not by itself an ERP accepted result
- aggregation result and application submission remain distinct
