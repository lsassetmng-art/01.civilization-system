# ============================================================
# PROJECT FLOW WORKLOAD SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
workload

purpose:
Shows member workload balance.

main_components:
- member summary table
- workload distribution view
- overload warning area
- date range filter

key_columns:
- member_name
- assigned_task_count
- overdue_task_count
- workload_estimate_hours
- workload_actual_hours

actions:
- open member task view
- export workload view
