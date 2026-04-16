# ============================================================
# TASK RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

task_states:
- not_started
- in_progress
- blocked
- done
- cancelled

rules:
- overdue is derived
- blocked task must expose blocking reason
- done requires completion timestamp
