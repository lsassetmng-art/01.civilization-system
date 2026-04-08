# ============================================================
# PROJECT TASK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- task_id
- project_id
- parent_task_id
- task_title
- task_description
- assignee_id
- status
- priority
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- dependency_task_id
- workload_estimate_hours
- workload_actual_hours
- created_at
- updated_at
