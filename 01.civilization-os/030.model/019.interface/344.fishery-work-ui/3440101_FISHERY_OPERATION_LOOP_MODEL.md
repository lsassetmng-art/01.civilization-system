# ============================================================
# FISHERY OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: fishery-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_fishery_operation_loop:
- harbor_state_loaded
- weather_and_sea_state_checked
- vessel_and_crew_checked
- departure_plan_checked
- catch_target_and_market_context_checked
- player_or_ai_adjustment_selected
- fishing_operation_resolved
- spoilage_or_incident_check_run
- result_summary_generated
- fishery_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_departure_loop
- multi_day_voyage_loop
- seasonal_fishery_loop
- market_timing_loop
- incident_response_loop
- harbor_recovery_loop


# ============================================================
# 3. FINAL RULE
# ============================================================

Fishery operation must define
what is decided before departure,
what happens at sea,
and what is salvaged or lost on return.
