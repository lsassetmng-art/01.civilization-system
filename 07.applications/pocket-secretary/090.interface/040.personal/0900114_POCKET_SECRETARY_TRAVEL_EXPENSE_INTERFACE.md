# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for travel expense handling.

required UI elements:
- entry list
- entry editor
- departure and arrival fields
- amount field
- monthly grouping visibility
- review surface

rules:
- local entry and monthly aggregation remain distinguishable
- travel expense input does not imply ERP submission
