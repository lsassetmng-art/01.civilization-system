# ============================================================
# PROJECT FLOW LIGHT AUTOMATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. system detects trigger event
2. matching automation rules are evaluated
3. notification or simple action candidate is selected
4. execution result is recorded
5. user sees outcome in dashboard or notification area

example_triggers:
- overdue task
- high risk detected
- sync failed
- delayed milestone
