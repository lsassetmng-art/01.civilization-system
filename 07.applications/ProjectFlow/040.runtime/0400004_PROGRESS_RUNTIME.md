# ============================================================
# PROGRESS RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- task progress must remain between 0 and 100
- project progress may be manual or task-derived by policy
- delay_days is derived from schedule and completion state
