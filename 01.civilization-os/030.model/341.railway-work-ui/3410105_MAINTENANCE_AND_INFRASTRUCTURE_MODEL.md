# ============================================================
# MAINTENANCE AND INFRASTRUCTURE MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: maintenance-and-infrastructure

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MAINTENANCE FIELDS
# ============================================================

maintenance_fields:
- track_condition
- signal_condition
- rolling_stock_condition
- station_condition
- bridge_and_tunnel_condition
- backlog_level
- planned_maintenance_window
- deferred_maintenance_risk
- weather_exposure_risk
- budget_constraint_level


# ============================================================
# 2. MAINTENANCE ACTIONS
# ============================================================

maintenance_actions:
- schedule_track_maintenance
- schedule_signal_maintenance
- withdraw_trainset_for_inspection
- prioritize_bridge_repair
- prioritize_station_repair
- defer_noncritical_work
- emergency_repair_dispatch
- frontier_line_support_repair
- weather_prevention_prep


# ============================================================
# 3. FINAL RULE
# ============================================================

Maintenance must visibly trade off
service continuity,
future safety,
and budget pressure.
