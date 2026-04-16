# ============================================================
# MBO DASHBOARD AND KPI IMPLEMENTATION
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Implementation-facing rules for dashboard and KPI calculation.

server_side_rules:
- all dashboard counts must be calculated server-side
- all KPI values must be calculated server-side
- role-based filters must be applied before aggregate calculation
- selected period filters must be applied before aggregate calculation
- reopen/current-state handling must reflect latest persisted state

query_rules:
- use latest persisted objective state for status counts
- use latest persisted ERP transmission result for ERP failure count
- use persisted timestamps for overdue and stale checks
- cancelled schedules must be excluded from overdue counts
- draft objectives are excluded from average_progress_percent by default

UI_rules:
- summary cards must distinguish count widgets from rate widgets
- charts must label bucket definitions clearly
- executive summary must remain read-only
- action-needed widgets must offer direct drill-down navigation
- zero-value widgets may remain visible if important for consistency

performance_rules:
- dashboard aggregates should be cacheable by scope and role where safe
- cache invalidation must reflect progress, review, evaluation, and ERP events
- stale cache must not hide ERP failure visibility

