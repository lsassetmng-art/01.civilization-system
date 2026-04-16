# ============================================================
# PROJECT FORM REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- form_request_id
- company_id
- project_id
- form_type
- title
- payload_json
- submitted_by_user_id
- submitted_at
- status
- created_target_entity_type
- created_target_entity_id

form_type_candidates:
- task_create
- issue_register
- progress_report_request
