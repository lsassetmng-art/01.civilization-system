# ============================================================
# PROJECT FLOW GANTT SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
gantt

purpose:
Shows task schedule structure in a gantt-like operational view.

main_components:
- project selector
- date scale selector
- task hierarchy area
- task bars
- milestone markers
- dependency lines or indicators
- side detail panel
- filter area

filters:
- project
- assignee
- status
- overdue only
- blocked only

task_bar_data:
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days

actions:
- open task detail
- open milestone detail context
- switch to timeline
- export gantt snapshot
- open schedule proposal preview when relevant

ui_rules:
- smartphone may use compressed gantt layout
- pc may use denser side-by-side hierarchy and bar view
- same actions must remain available across devices
