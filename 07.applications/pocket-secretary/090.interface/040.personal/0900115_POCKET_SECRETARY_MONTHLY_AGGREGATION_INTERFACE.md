# ============================================================
# POCKET SECRETARY MONTHLY AGGREGATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for monthly aggregation results.

required UI elements:
- target month selector
- aggregated total display
- item count display
- review surface
- follow-up action visibility where applicable

rules:
- aggregation result must not be shown as ERP accepted result
- review and submission remain distinct
