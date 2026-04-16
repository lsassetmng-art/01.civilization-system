# ============================================================
# PROJECT FLOW LIVE DASHBOARD DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
live_dashboard

purpose:
Provides richer live operational summary.

main_sections:
- progress summary
- delay summary
- workload summary
- issue and risk summary
- sync summary
- quick navigation and action area

progress_summary_metrics:
- active_project_count
- progress_percent_average
- completed_task_count
- incomplete_task_count

delay_summary_metrics:
- overdue_project_count
- overdue_task_count
- delayed_milestone_count

workload_summary_metrics:
- member_overload_count
- total_estimate_hours
- total_actual_hours

issue_risk_summary_metrics:
- open_issue_count
- critical_issue_count
- open_risk_count
- high_risk_count

sync_summary_metrics:
- failed_sync_count
- partially_failed_sync_count
- retryable_sync_count

actions:
- open project list
- open task list
- open issue_risk
- open sync status
- open report editor
- open export
