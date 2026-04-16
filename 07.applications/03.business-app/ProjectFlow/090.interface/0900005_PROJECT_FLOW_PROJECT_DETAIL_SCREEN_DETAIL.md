# ============================================================
# PROJECT FLOW PROJECT DETAIL SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
project_detail

purpose:
Shows single project operational detail.

main_tabs:
- overview
- tasks
- milestones
- issues_risks
- time
- sync
- reports

overview_fields:
- project_name
- erp_project_code
- project_status
- project_type
- customer_name_snapshot
- project_manager_name_snapshot
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- budget_amount_view
- actual_cost_amount_view
- priority
- health_status

ui_rules:
- ERP-owned fields must appear read-only
- local editable fields must be clearly editable
- sync state must be visible in header
- export/report actions must be accessible in header area

header_actions:
- edit project
- export project summary
- generate report draft
- request export to ERP path
- open sync detail
