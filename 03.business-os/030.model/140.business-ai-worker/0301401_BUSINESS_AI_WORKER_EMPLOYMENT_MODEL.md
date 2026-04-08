# ============================================================
# BUSINESS AI WORKER EMPLOYMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

definition:
Represents company employment of a shared work-use AI template.

fields:
- worker_employment_id
- company_id
- worker_template_id
- local_display_name
- local_role_name
- employment_status
- available_flag
- created_at
- updated_at

rules:
- employment and local naming remain distinct
