# ============================================================
# MBO STATE TRANSITION RUNTIME
# ============================================================

status: canonical
application: Mbo
layer: runtime
owner: Boss
prepared_by: Zero

purpose:
Fixes formal state transitions for Mbo records.

# ============================================================
# 1. OBJECTIVE STATE MACHINE
# ============================================================

objective_state_machine:

  states:
    - draft
    - active
    - in_review
    - evaluation_drafted
    - finalized
    - transferred

  transitions:

    - from: draft
      to: active
      trigger: activate_objective
      conditions:
        - required fields are present
        - period is open
        - actor has permission

    - from: active
      to: in_review
      trigger: review_started
      conditions:
        - at least one review schedule or review log exists

    - from: in_review
      to: active
      trigger: review_completed_continue
      conditions:
        - evaluation is not yet confirmed

    - from: active
      to: evaluation_drafted
      trigger: evaluation_draft_saved
      conditions:
        - actor has evaluator permission

    - from: in_review
      to: evaluation_drafted
      trigger: evaluation_draft_saved
      conditions:
        - actor has evaluator permission

    - from: evaluation_drafted
      to: finalized
      trigger: confirm_evaluation
      conditions:
        - evaluation draft exists
        - actor has confirm permission
        - objective is not locked already

    - from: finalized
      to: transferred
      trigger: ERP_send_success
      conditions:
        - outbound payload validation passed
        - actor has ERP transmit permission

non_transitions:
- draft cannot move directly to finalized
- active cannot move directly to transferred
- finalized cannot move back to active in normal flow
- transferred cannot move to draft, active, or in_review in normal flow

# ============================================================
# 2. REVIEW SCHEDULE STATE MACHINE
# ============================================================

review_schedule_state_machine:

  states:
    - planned
    - completed
    - cancelled
    - overdue

  transitions:
    - from: planned
      to: completed
      trigger: review_log_saved

    - from: planned
      to: cancelled
      trigger: cancel_schedule

    - from: planned
      to: overdue
      trigger: schedule_time_passed_without_completion

    - from: overdue
      to: completed
      trigger: delayed_review_log_saved

# ============================================================
# 3. EVALUATION STATE MACHINE
# ============================================================

evaluation_state_machine:

  states:
    - not_started
    - draft_saved
    - confirmed
    - ERP_sent
    - ERP_failed

  transitions:
    - from: not_started
      to: draft_saved
      trigger: save_evaluation_draft

    - from: draft_saved
      to: confirmed
      trigger: confirm_evaluation

    - from: confirmed
      to: ERP_sent
      trigger: ERP_send_success

    - from: confirmed
      to: ERP_failed
      trigger: ERP_send_failure

    - from: ERP_failed
      to: ERP_sent
      trigger: ERP_resend_success

# ============================================================
# 4. JOB STATE MACHINES
# ============================================================

job_state_patterns:
  queueable_jobs:
    states:
      - queued
      - running
      - completed
      - failed

  applicable_jobs:
    - aggregation_export_job
    - reminder_batch_job
    - ERP_resend_job

