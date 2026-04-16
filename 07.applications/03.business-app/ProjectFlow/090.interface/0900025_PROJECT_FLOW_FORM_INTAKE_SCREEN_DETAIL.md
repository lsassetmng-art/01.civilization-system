# ============================================================
# PROJECT FLOW FORM INTAKE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
form_intake

purpose:
Provides simplified structured input for frequent entry scenarios.

main_components:
- form type selector
- project selector
- dynamic field area
- submit action
- submission result area

supported_form_types:
- task_create
- issue_register
- progress_report_request

task_create_form_fields:
- project
- title
- description
- assignee
- priority
- planned_end_date

issue_register_form_fields:
- project
- related_task optional
- title
- description
- severity
- due_date

progress_report_request_form_fields:
- project
- report_type
- reporting_period
- request_note

ui_rules:
- only required fields should appear first
- form should remain compact and easy for field use
- success result should show created target when applicable
