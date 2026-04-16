# ============================================================
# POCKET SECRETARY COMPANY SECRETARY REFERENCE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents PocketSecretary-side reference state
for BusinessOS company secretary consumption.

fields:
- company_secretary_reference_id
- user_id
- company_id
- worker_employment_id
- local_display_name
- local_role_name
- available_flag
- usage_scope_summary
- source_system
- created_at
- updated_at

constraints:
- source_system must be business-os
- this model is a consumption reference only
- this model is not employment truth

rules:
- reference state and BusinessOS truth remain distinct
- unavailable company secretary must not be rendered as usable
