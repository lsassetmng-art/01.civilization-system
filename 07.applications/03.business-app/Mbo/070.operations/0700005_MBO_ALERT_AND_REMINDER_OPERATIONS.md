# ============================================================
# MBO ALERT AND REMINDER OPERATIONS
# ============================================================

status: canonical
application: Mbo
layer: operations
owner: Boss
prepared_by: Zero

purpose:
Defines formal alert and reminder rules
for progress management, review operation,
evaluation completion, and ERP failure visibility.

# ============================================================
# 1. ALERT VS REMINDER
# ============================================================

definitions:

  alert:
    meaning:
      A visibility-first operational signal
      that indicates delay, failure, risk, or required attention.
    characteristics:
      - system-generated
      - condition-based
      - must remain visible until resolved or dismissed by policy

  reminder:
    meaning:
      A notification or prompt intended
      to encourage timely user action.
    characteristics:
      - timing-based or batch-triggered
      - may be system-generated or operator-triggered
      - may be repeated according to cadence policy

# ============================================================
# 2. ALERT TYPES
# ============================================================

alert_types:

  stale_progress_alert:
    trigger_condition:
      - objective status is active or in_review
      - no progress log exists within configured stale threshold
    default_target_roles:
      - objective_owner
      - manager
    severity:
      - medium

  overdue_review_alert:
    trigger_condition:
      - review_schedule status is planned
      - planned_review_at has passed
      - no matching completed review_log exists
    default_target_roles:
      - manager
      - objective_owner
    severity:
      - high

  pending_evaluation_alert:
    trigger_condition:
      - objective state is evaluation_drafted
      - evaluation remains unconfirmed beyond configured threshold
    default_target_roles:
      - evaluator
      - manager
    severity:
      - high

  ERP_send_failure_alert:
    trigger_condition:
      - evaluation state is ERP_failed
      - last ERP transmission attempt failed
    default_target_roles:
      - HR_operator
      - system_auditor
    severity:
      - critical

  lock_state_attention_alert:
    trigger_condition:
      - user attempts normal edit on finalized record
    default_target_roles:
      - triggering_user
    severity:
      - informational

# ============================================================
# 3. REMINDER TYPES
# ============================================================

reminder_types:

  progress_update_reminder:
    trigger_condition:
      - objective status is active
      - progress update due window reached
    default_target_roles:
      - objective_owner

  scheduled_review_reminder:
    trigger_condition:
      - review_schedule exists
      - planned_review_at is approaching
    default_target_roles:
      - manager
      - objective_owner

  evaluation_confirmation_reminder:
    trigger_condition:
      - evaluation draft exists
      - evaluation is not yet confirmed
      - configured reminder window reached
    default_target_roles:
      - evaluator

  batch_review_reminder:
    trigger_condition:
      - reminder batch job requested
      - targets match pending review criteria
    default_target_roles:
      - target users resolved by batch scope

  batch_progress_reminder:
    trigger_condition:
      - reminder batch job requested
      - targets match stale progress criteria
    default_target_roles:
      - target users resolved by batch scope

# ============================================================
# 4. DEFAULT TIMING POLICY
# ============================================================

default_timing_policy:

  stale_progress_threshold:
    default_days: 7

  review_upcoming_reminder:
    default_days_before: 3

  review_overdue_trigger:
    default_days_after: 0

  evaluation_confirmation_reminder:
    default_days_after_draft: 3

  ERP_failure_attention:
    immediate: true

timing_policy_note:
Actual threshold values may later be made configurable
through governed administration,
but the canonical defaults above are fixed first.

# ============================================================
# 5. DELIVERY TARGET POLICY
# ============================================================

delivery_target_policy:

  objective_owner:
    receives:
      - stale_progress_alert
      - progress_update_reminder
      - scheduled_review_reminder
      - overdue_review_alert

  manager:
    receives:
      - stale_progress_alert
      - scheduled_review_reminder
      - overdue_review_alert
      - pending_evaluation_alert

  evaluator:
    receives:
      - evaluation_confirmation_reminder
      - pending_evaluation_alert

  HR_operator:
    receives:
      - ERP_send_failure_alert

  executive_viewer:
    receives:
      - no direct action reminders by default
    visibility_only:
      - dashboard summary indicators

  system_auditor:
    receives:
      - ERP_send_failure_alert visibility where policy allows
    visibility_only:
      - audit and history centered views

# ============================================================
# 6. RESOLUTION POLICY
# ============================================================

resolution_policy:

  stale_progress_alert:
    resolved_when:
      - new progress_log is created
      - objective becomes finalized
      - objective becomes transferred

  overdue_review_alert:
    resolved_when:
      - matching review_log is created
      - schedule is cancelled under governed rule

  pending_evaluation_alert:
    resolved_when:
      - evaluation is confirmed

  ERP_send_failure_alert:
    resolved_when:
      - resend succeeds
      - governed closure marks issue closed with retained history

  lock_state_attention_alert:
    resolved_when:
      - user leaves blocked edit path
    note:
      this is informational and session-scoped by default

# ============================================================
# 7. BATCH REMINDER POLICY
# ============================================================

batch_reminder_policy:
- batch reminders must be request-tracked
- batch reminders must preserve requested_by_user_id
- batch reminders must preserve target_scope
- batch reminders must preserve reminder_type
- batch reminders must preserve job_status
- batch reminders must not silently send without history
- batch reminders should be reusable across applications later

# ============================================================
# 8. DASHBOARD VISIBILITY POLICY
# ============================================================

dashboard_visibility_policy:
- alerts must be visible in dashboard summary areas
- critical ERP failures must be visually separated from normal reminders
- overdue reviews must be visible before ordinary upcoming reviews
- locked records must not appear as editable pending work
- executive summary should show aggregate counts, not edit prompts

