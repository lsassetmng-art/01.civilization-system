# ============================================================
# EDUCATION OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: education-work-ui
component: education-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_education_operation_loop:
- school_state_loaded
- class_and_teacher_state_checked
- curriculum_and_term_plan_checked
- student_performance_and_support_checked
- event_or_exam_calendar_checked
- player_or_ai_adjustment_selected
- school_tick_resolved
- issue_or_incident_check_run
- result_summary_generated
- school_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_school_loop
- weekly_instruction_loop
- term_exam_loop
- event_preparation_loop
- annual_progression_loop
- incident_response_loop


# ============================================================
# 3. FINAL RULE
# ============================================================

Education operation must define
what is handled daily,
what is reviewed weekly,
what is judged by term,
and what changes yearly.
