# ============================================================
# RELIGION OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: religion-work-ui
component: religion-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_religion_operation_loop:
- institution_state_loaded
- ritual_calendar_checked
- clergy_and_resource_state_checked
- believer_need_and_attendance_checked
- outreach_or_pilgrimage_context_checked
- player_or_ai_adjustment_selected
- ritual_or_operation_resolved
- scandal_or_shortage_check_run
- result_summary_generated
- religion_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_worship_loop
- weekly_congregation_loop
- festival_preparation_loop
- donation_cycle_loop
- pilgrimage_cycle_loop
- memorial_cycle_loop
- crisis_response_loop


# ============================================================
# 3. FINAL RULE
# ============================================================

Religion operation must define
what is repeated routinely,
what peaks seasonally,
and what becomes doctrine or legitimacy crisis.
