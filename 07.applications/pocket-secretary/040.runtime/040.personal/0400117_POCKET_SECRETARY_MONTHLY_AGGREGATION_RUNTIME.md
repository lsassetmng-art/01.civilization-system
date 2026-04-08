# ============================================================
# POCKET SECRETARY MONTHLY AGGREGATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for monthly aggregation.

runtime areas:
- eligible item selection
- aggregation calculation
- result persistence
- review output

rules:
- aggregation is a bounded local/business preparation step
- aggregation result does not equal ERP acceptance
- aggregation and submission remain distinct
