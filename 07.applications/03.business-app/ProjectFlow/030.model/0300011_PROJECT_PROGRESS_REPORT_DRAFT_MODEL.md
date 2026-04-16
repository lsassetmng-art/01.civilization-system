# ============================================================
# PROJECT PROGRESS REPORT DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- report_draft_id
- project_id
- report_type
- report_period_start
- report_period_end
- quantitative_summary_json
- qualitative_draft_text
- next_actions_text
- support_requests_text
- customer_confirmation_items_text
- created_by
- created_at
- updated_at
- approval_status

report_types:
- weekly
- monthly
- customer
- internal

notes:
This model stores draft content only.
Final external use requires human editing and approval.
