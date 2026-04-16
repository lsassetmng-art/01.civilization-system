# ============================================================
# PROJECT FLOW TEMPLATE AND AUTOMATION SCREEN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

new_or_extended_screens:
- form_intake
- automation_rule_settings
- template_selector
- schedule_proposal_preview
- project_memo
- comment_history

screen_notes:

form_intake:
Simple structured entry for task,
issue,
and progress-report-related requests.

automation_rule_settings:
Small rule editor for notification-focused automation.

template_selector:
Lets user choose project type and project template.

schedule_proposal_preview:
Shows generated WBS dates,
dependencies,
and editable adjustments before confirmation.

project_memo:
Shows notes,
meeting records,
and decision records.

comment_history:
Shows short communication thread on project-linked items.
