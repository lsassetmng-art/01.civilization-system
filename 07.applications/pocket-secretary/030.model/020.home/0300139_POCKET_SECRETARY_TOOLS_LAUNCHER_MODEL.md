# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents tools launcher configuration and recent usage state.

fields:
- tools_launcher_id
- user_id
- tool_code
- enabled_flag
- recent_used_at
- availability_scope
- created_at
- updated_at

tool_code may include:
- calculator
- mailer
- yahoo_transit
- business_card_management
