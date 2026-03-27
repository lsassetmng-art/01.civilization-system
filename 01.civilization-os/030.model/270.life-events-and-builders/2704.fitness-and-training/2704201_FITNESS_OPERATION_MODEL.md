# ============================================================
# FITNESS OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: fitness-and-training
component: fitness-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- facility_defined
- membership_plan_defined
- training_program_defined
- member_enrollment_opened
- session_scheduled
- training_delivered
- progress_recorded
- renewal_or_dropout_processed


# ============================================================
# 2. FINAL RULE
# ============================================================

Fitness operation must support membership,
program, session, and progress logic.
