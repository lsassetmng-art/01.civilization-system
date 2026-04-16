# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for travel expense handling.

runtime areas:
- entry creation
- local edit
- local save
- monthly linkage
- review preparation

rules:
- travel expense begins as local working data
- monthly aggregation remains a distinct later step
- local save success does not imply ERP submission
