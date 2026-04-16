# ============================================================
# PROJECT FLOW PROJECT LIST SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
project_list

purpose:
Shows searchable and sortable project header list.

main_components:
- search bar
- filter panel
- sortable table/list
- bulk actions
- export action

key_columns:
- project_name
- erp_project_code
- project_status
- project_manager_name_snapshot
- progress_percent
- planned_end_date
- delay_days
- health_status
- sync_state

filters:
- status
- manager
- health_status
- sync_state
- planned_end_date range
- ERP linked only

bulk_actions:
- archive selected
- export selected view
- open report generation for selected project

row_actions:
- open detail
- open tasks
- open sync status
