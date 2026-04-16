# ============================================================
# PROJECT FLOW TIME ENTRY SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
time_entry

purpose:
Supports quick work log entry.

main_components:
- project selector
- task selector
- date input
- hour input
- work type input
- note input
- recent entries list

list_columns:
- work_date
- project_name
- task_title
- member_name_snapshot
- hours
- export_state

actions:
- save entry
- edit entry
- export time entry list
