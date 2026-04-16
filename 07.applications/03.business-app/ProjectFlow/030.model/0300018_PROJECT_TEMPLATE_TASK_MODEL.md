# ============================================================
# PROJECT TEMPLATE TASK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- project_template_task_id
- project_template_id
- task_template_name
- description
- sequence_no
- relative_start_offset_days
- planned_duration_days
- dependency_template_task_id
- default_priority
- milestone_flag

notes:
Offsets are relative and used for scheduling proposal generation.
