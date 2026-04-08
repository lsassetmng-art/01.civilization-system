# ============================================================
# POCKET SECRETARY DASHBOARD WIDGET MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents widget placement and display state
for the PocketSecretary dashboard.

fields:
- widget_id
- user_id
- widget_type
- position_code
- visibility_flag
- sort_order
- configuration_payload
- updated_at

rules:
- widget visibility must not alter permission or authority
- display state and execution authority must remain separate
