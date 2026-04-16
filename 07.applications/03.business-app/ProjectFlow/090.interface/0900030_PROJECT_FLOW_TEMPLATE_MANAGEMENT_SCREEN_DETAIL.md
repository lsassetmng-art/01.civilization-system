# ============================================================
# PROJECT FLOW TEMPLATE MANAGEMENT SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
template_management

purpose:
Manages reusable project templates.

main_components:
- template list
- template detail editor
- task template list
- milestone marker area
- dependency editor
- activation toggle

template_header_fields:
- template_name
- project_type
- description
- is_active

task_template_fields:
- task_template_name
- description
- sequence_no
- relative_start_offset_days
- planned_duration_days
- dependency_template_task_id
- default_priority
- milestone_flag

actions:
- create template
- edit template
- activate template
- deactivate template
- duplicate template
