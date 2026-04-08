# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundary for launching the dedicated business app
from PocketSecretary.

integration role:
PocketSecretary launches the dedicated business app
for quotation and order work.

bounded launch data may include:
- target_app_code
- entry_mode
- customer_reference
- company_context_id
- handoff_source

rules:
- launch integration must remain explicit
- launch result and business result remain distinct
