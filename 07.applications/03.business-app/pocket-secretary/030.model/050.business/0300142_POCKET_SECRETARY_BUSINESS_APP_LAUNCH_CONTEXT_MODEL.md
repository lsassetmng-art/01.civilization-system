# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH CONTEXT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded launch context passed from PocketSecretary
to the dedicated business app.

fields:
- launch_context_id
- user_id
- target_app_code
- company_context_id
- customer_reference
- entry_mode
- handoff_source
- created_at
- updated_at

target_app_code may include:
- business_quote_order_app

entry_mode may include:
- quotation_entry
- order_entry
- generic_business_entry

rules:
- launch context is not a business document
- launch context and submission state remain distinct
