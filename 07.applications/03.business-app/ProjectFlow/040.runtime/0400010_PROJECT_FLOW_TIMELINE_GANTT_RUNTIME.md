# ============================================================
# PROJECT FLOW TIMELINE GANTT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

timeline_runtime_rules:
- milestone order follows due_date and dependency context
- delayed milestones must be emphasized
- completed milestones must remain visible for historical understanding

gantt_runtime_rules:
- task bar start/end uses planned dates by default
- actual dates may be overlaid when available
- parent task grouping must not lose child task visibility
- dependency relation display is derived from dependency_task_id or template dependency mapping
- overdue display is derived, not stored by gantt itself

dashboard_runtime_rules:
- dashboard aggregates latest operational state
- dashboard should prefer quick-read values over heavy detail
- failed sync and high-risk counts must remain visible at top level
- dashboard should support drilldown into source screens

proposal_runtime_rules:
- schedule proposal preview may render as gantt or timeline
- proposal state must remain distinct from confirmed schedule state
