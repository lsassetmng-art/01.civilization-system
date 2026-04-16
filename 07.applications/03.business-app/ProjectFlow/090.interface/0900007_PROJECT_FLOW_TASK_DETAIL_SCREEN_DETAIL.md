# ============================================================
# PROJECT FLOW TASK DETAIL SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
task_detail

purpose:
Shows a task with execution detail and update actions.

main_sections:
- task header
- schedule/progress
- dependency info
- work log summary
- related issue list
- update form

header_fields:
- task_title
- project_name
- assignee_name_snapshot
- status
- priority

detail_fields:
- task_description
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- workload_estimate_hours
- workload_actual_hours
- dependency_task_id

actions:
- save task
- change status
- register time entry
- register issue
- open related project
