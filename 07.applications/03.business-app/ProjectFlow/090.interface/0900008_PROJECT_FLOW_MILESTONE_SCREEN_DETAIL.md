# ============================================================
# PROJECT FLOW MILESTONE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
milestone

purpose:
Manages milestone visibility and completion.

main_components:
- milestone list
- due date timeline style view
- delay indicator
- completion action
- export action

key_columns:
- milestone_name
- milestone_status
- due_date
- completed_at
- delay_days
- owner_name_snapshot

actions:
- create milestone
- update milestone
- complete milestone
- export milestone view
