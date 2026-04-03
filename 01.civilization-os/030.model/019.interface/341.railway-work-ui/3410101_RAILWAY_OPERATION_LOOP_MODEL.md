# ============================================================
# RAILWAY OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: railway-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_railway_operation_loop:
- network_state_loaded
- timetable_checked
- trainset_and_crew_checked
- maintenance_risk_checked
- fare_and_demand_context_checked
- player_or_ai_adjustment_selected
- operation_tick_resolved
- delay_or_incident_check_run
- result_summary_generated
- service_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_operation_loop
- shift_operation_loop
- weekly_timetable_adjustment_loop
- monthly_maintenance_planning_loop
- disruption_response_loop
- seasonal_demand_rebalancing_loop


# ============================================================
# 3. FINAL RULE
# ============================================================

Railway operation must define
what runs routinely,
what is re-planned periodically,
and what triggers emergency handling.
