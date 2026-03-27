# ============================================================
# JOB LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: work-ui-foundation
component: job-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_job_loop:
- role_context_loaded
- current_state_checked
- daily_or_periodic_tasks_generated
- player_or_ai_action_selected
- resource_and_personnel_validation_run
- action_resolved
- incident_check_run
- result_summary_generated
- world_state_updated
- work_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_operation_loop
- weekly_planning_loop
- monthly_review_loop
- incident_response_loop
- campaign_or_project_loop
- shift_rotation_loop


# ============================================================
# 3. LOOP FIELDS
# ============================================================

loop_fields:
- job_category
- loop_type
- trigger_frequency
- mandatory_steps
- optional_steps
- blocking_conditions
- failure_conditions
- escalation_conditions
- persistence_rule


# ============================================================
# 4. FINAL RULE
# ============================================================

Each profession must define
what is repeated,
what is exceptional,
and what counts as operational failure.
