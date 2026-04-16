# ============================================================
# MBO STATE AND LOCK IMPLEMENTATION
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Implementation-facing rules for state transitions and lock checks.

server_side_mandates:
- all state transitions must be checked server-side
- all lock checks must be checked server-side
- UI must not be the only guard
- ERP send eligibility must be checked server-side

transition_validation_rules:
- activate_objective requires required field validation
- confirm_evaluation requires evaluator confirmation permission
- ERP_send_success requires confirmed evaluation and validated payload
- ERP_resend requires prior failure state and resend reason

lock_validation_rules:
- reject objective update when final_lock_flag is true
- reject action plan update when linked objective is finalized
- reject normal progress creation when linked objective is finalized
- reject evaluation update after confirmation
- allow ERP status field update through controlled backend process only

UI_state_rules:
- locked records must display lock badge
- disabled controls must visibly explain why editing is unavailable
- ERP failed state must visibly expose resend path only to authorized roles
- overdue review state must visibly differ from planned state

