# ============================================================
# MILITARY SUPPORT OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: military-support-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_military_support_operation_loop:
- support_state_loaded
- readiness_and_priority_checked
- stock_and_transport_checked
- personnel_and_recovery_checked
- player_or_ai_adjustment_selected
- support_action_resolved
- incident_or_shortage_check_run
- result_summary_generated
- readiness_state_updated
- support_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_support_loop
- weekly_readiness_loop
- convoy_execution_loop
- training_cycle_loop
- casualty_response_loop
- emergency_support_loop


# ============================================================
# 3. FINAL RULE
# ============================================================

Military support must define
what is routine,
what is readiness-building,
and what becomes emergency override work.
