# ============================================================
# POCKET SECRETARY SECRETARY SCOPE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines secretary scope distinction inside PocketSecretary.

scope values:
- display_only
- personal_ai
- company_ai

plan mapping:
- free: display_only
- pro: display_only + personal_ai
- enterprise: display_only + personal_ai + company_ai

rules:
- company_ai scope means BusinessOS company secretary consumption
- scope availability and actual usability remain distinct
