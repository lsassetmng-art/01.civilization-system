# ============================================================
# PROJECT FLOW DASHBOARD SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
dashboard

purpose:
Provides daily overview for managers and operators.

main_sections:
- summary cards
- overdue alerts
- project progress summary
- issue/risk summary
- sync summary
- quick actions

summary_cards:
- active project count
- overdue project count
- overdue task count
- open issue count
- high risk count
- failed sync count

quick_actions:
- create local project
- open import status
- open export
- generate report draft
- open overdue tasks

primary_filters:
- company
- project manager
- status
- period

navigation_targets:
- project_detail
- task_list
- issue_risk
- sync_status
- report_editor
