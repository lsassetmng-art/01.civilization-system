# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH CONTEXT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded Deep Link launch context passed
from PocketSecretary to external business apps.

fields:
- launch_context_id
- user_id
- target_app_code
- deep_link_scheme
- mode
- company_context_id
- customer_reference
- keyword
- card_id
- handoff_source
- auth_context_inherited_flag
- auth_session_scope
- created_at
- updated_at

target_app_code may include:
- estimatecreator
- namecardmanager

deep_link_scheme examples:
- estimatecreator
- namecardmanager

mode examples:
- estimate_entry
- sales_memo_entry
- meeting_memo_entry
- search
- new
- detail
- related_people
- related_cases
- generic_entry
- generic_business_entry

rules:
- launch context is not a business document
- launch context and submission state remain distinct
- inherited auth context and target-side authorization remain distinct
