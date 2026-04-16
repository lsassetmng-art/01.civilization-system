# ============================================================
# PROJECT FLOW ISSUE RISK SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
issue_risk

purpose:
Provides unified issue and risk handling.

main_tabs:
- issues
- risks

issue_columns:
- title
- severity
- status
- owner_name_snapshot
- due_date
- related_task_id

risk_columns:
- title
- probability_level
- impact_level
- risk_score
- status
- owner_name_snapshot

actions:
- register issue
- register risk
- update severity/status
- update mitigation
- export current view

visual_rules:
- high severity and high risk must be visually prominent
