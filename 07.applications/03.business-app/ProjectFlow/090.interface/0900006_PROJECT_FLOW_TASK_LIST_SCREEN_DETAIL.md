# ============================================================
# PROJECT FLOW TASK LIST SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
task_list

purpose:
Supports daily task tracking and delay recovery.

main_components:
- project scope selector
- task search
- filter chips
- task list/grid
- bulk update area
- export action

key_columns:
- task_title
- project_name
- assignee_name_snapshot
- status
- priority
- planned_end_date
- progress_percent
- delay_days
- dependency_task_id

filters:
- project
- assignee
- status
- priority
- overdue only
- blocked only

bulk_actions:
- change status
- assign owner
- export current view

row_actions:
- open task detail
- quick progress update
- quick status update
