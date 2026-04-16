# ============================================================
# PROJECT FLOW BLOCKED ACTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines blocked action behavior in unpaid_read_only mode.

blocked_action_rules:
- blocked actions remain visible
- blocked actions must not execute mutation
- blocked actions should explain why they are blocked
- blocked actions should guide the user to subscription recovery path
- silent hide is forbidden for major actions

major_blocked_actions:
- create project
- edit project
- create or edit task
- create or edit milestone
- create or edit issue/risk
- create or edit time entry
- request ERP import
- request ERP export
- retry sync
- generate xlsx
- generate csv
- generate report draft
- update report draft
