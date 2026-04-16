# ============================================================
# PROJECT FLOW TIMELINE GANTT DASHBOARD IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- timeline aggregation query or view model
- gantt hierarchy and bar projection logic
- dependency visualization adapter
- dashboard aggregation service
- proposal preview rendering

implementation_rules:
- keep timeline and gantt read-model oriented
- avoid making visual layers the source of truth
- allow device-specific presentation optimization only
- preserve drilldown from aggregated views to source detail
