# ============================================================
# PROJECT FLOW SCREEN ACTION MATRIX
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_action_matrix:

dashboard:
- view summary
- open project list
- open task list
- open sync status
- open report editor
- open settings

project_list:
- search
- filter
- sort
- open project detail
- open task list
- export current view
- open report editor

project_detail:
- view overview
- edit local fields
- open tasks
- open milestones
- open issues_risks
- open time
- open sync
- export summary
- generate report draft
- request ERP export path

task_list:
- search
- filter
- sort
- open task detail
- quick update
- export current view

task_detail:
- update task
- change status
- register time entry
- register issue
- open project detail

milestone:
- create
- update
- complete
- export current view

issue_risk:
- register issue
- register risk
- update status
- update severity_or_risk
- export current view

time_entry:
- create
- update
- export current view

workload:
- view member workload
- open member-related tasks
- export current view

sync_status:
- view sync requests
- filter
- open error detail
- retry if allowed
- export sync result list

export:
- choose format
- choose columns
- choose masking option
- generate output
- view export history

report_editor:
- choose project
- choose period
- choose type
- generate draft
- edit draft
- mark reviewed
- mark approved
- export report text or material

settings:
- update defaults
- update export defaults
- update report defaults
- update refresh preferences
