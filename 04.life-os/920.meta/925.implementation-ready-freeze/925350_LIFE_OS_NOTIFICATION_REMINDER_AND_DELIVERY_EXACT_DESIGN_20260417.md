# ============================================================
# LIFE OS NOTIFICATION / REMINDER / DELIVERY EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925350
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact design of reminders, alerts, notification delivery attempts, acknowledgment, and quiet-hours behavior.
- Keep reminder state append-first and replay-safe.
- Separate business reminder truth from provider-specific transport state.

principles:
- reminder intent is canonical
- provider delivery state is derivative
- retry is append-only
- user acknowledgment is explicit
- quiet-hours are evaluated before provider send
- alert severity and reminder urgency are not the same thing

# ============================================================
# 1. REMINDER BOUNDARY
# ============================================================

reminder_boundary:
  canonical:
    - reminder intent
    - schedule rule
    - due_at
    - target user
    - business purpose
    - acknowledgment state
  derivative:
    - provider message id
    - provider send token
    - push transport receipt
    - email delivery response
    - sms provider response

reminder_entities:
  reminder_job:
    meaning: logical reminder intent and due instance
  reminder_schedule_rule:
    meaning: template/rule from which due reminders are generated
  delivery_attempt:
    meaning: append-only provider attempt record
  reminder_ack:
    meaning: explicit user acknowledgment
  quiet_hours_policy:
    meaning: user or system quiet-hours evaluation rule set

# ============================================================
# 2. STATE MACHINES
# ============================================================

reminder_job_state_machine:
  states:
    - scheduled
    - blocked_by_quiet_hours
    - due
    - delivery_in_progress
    - delivered
    - acknowledged
    - expired
    - canceled
  transitions:
    - scheduled -> blocked_by_quiet_hours
    - scheduled -> due
    - blocked_by_quiet_hours -> due
    - due -> delivery_in_progress
    - delivery_in_progress -> delivered
    - delivery_in_progress -> due
    - delivered -> acknowledged
    - delivered -> expired
    - scheduled -> canceled
    - due -> canceled

delivery_attempt_state_machine:
  states:
    - created
    - provider_requested
    - provider_accepted
    - provider_rejected
    - delivered
    - failed
    - abandoned
  transition_notes:
    - one reminder_job may have multiple delivery_attempts
    - delivery_attempts do not redefine reminder canonical truth
    - provider_accepted is not the same as delivered

acknowledgment_rules:
  allowed_sources:
    - in_app_ack
    - push_open_ack
    - email_ack_link
    - operator_ack
  effect:
    - acknowledgment closes pending reminder intent for that due instance
    - acknowledgment appends ack record and emits life.reminder.acknowledged.v1

# ============================================================
# 3. EXACT DATA CONTRACTS
# ============================================================

reminder_schedule_rule_fields:
  required:
    - reminder_rule_id
    - user_id
    - reminder_code
    - schedule_kind
    - schedule_expression
    - timezone_code
    - channel_priority_json
    - quiet_hours_policy_code
    - is_active
  optional:
    - effective_from
    - effective_until
    - default_message_template_code
    - associated_goal_code
    - associated_habit_code

reminder_job_fields:
  required:
    - reminder_job_id
    - reminder_rule_id
    - user_id
    - reminder_code
    - due_at
    - schedule_instance_date
    - urgency_code
    - current_status
    - created_at
  optional:
    - related_goal_event_id
    - related_habit_code
    - last_delivery_attempt_id
    - acknowledged_at
    - canceled_at
    - expired_at

delivery_attempt_fields:
  required:
    - delivery_attempt_id
    - reminder_job_id
    - attempt_no
    - channel_code
    - provider_code
    - attempted_at
    - current_status
  optional:
    - provider_reference
    - provider_response_code
    - delivered_at
    - failed_at
    - failure_reason_code

# ============================================================
# 4. QUIET HOURS / RETRY / ESCALATION
# ============================================================

quiet_hours_rules:
  evaluation_order:
    - explicit user quiet-hours policy
    - system critical override
    - channel-specific policy
  allowed_actions_when_blocked:
    - defer due_at to next allowed window
    - keep reminder_job blocked_by_quiet_hours
    - emit audit event
  prohibited_actions_when_blocked:
    - silent provider send without policy
    - escalation unless critical override contract exists

retry_policy:
  retry_dimensions:
    - channel_code
    - urgency_code
    - provider_result_code
  default_retry_examples:
    in_app:
      max_attempts: 1
    push:
      max_attempts: 3
      backoff: exponential
    email:
      max_attempts: 2
      backoff: fixed
  non_retryable_failures:
    - invalid_target
    - revoked_channel_permission
    - reminder_job_already_acknowledged
    - expired_due_window

escalation_rules:
  allowed_only_for:
    - high urgency health-related reminder
    - repeated ignored critical reminder with policy consent
  escalation_outputs:
    - channel change
    - priority badge change
    - operator review queue insertion
  prohibition:
    - no hidden escalation without explicit policy basis

# ============================================================
# 5. API / EVENT BINDING
# ============================================================

api_binding:
  schedule_create_api:
    emits:
      - life.reminder.scheduled.v1
  reminder_delivery_runner:
    emits:
      - life.reminder.delivery.attempted.v1
  ack_api:
    emits:
      - life.reminder.acknowledged.v1

event_consumers:
  dashboard_projection:
    consumes:
      - life.reminder.scheduled.v1
      - life.reminder.delivery.attempted.v1
      - life.reminder.acknowledged.v1
  alert_projection:
    consumes:
      - life.alert.raised.v1
      - life.alert.dismissed.v1

# ============================================================
# 6. LIFE-PERSONA INTERACTION RULE
# ============================================================

life_persona_interaction_rule:
  when_persona_is_used_for_display:
    - reminder copy personalization must come from signed snapshot derived display parameters
    - no mutable persona internal state may drive canonical reminder truth
  when_persona_request_is_triggered:
    - LifeOS creates request event only
    - PersonaOS applies and returns result event
    - LifeOS stores request/result references and applied snapshot reference only

# ============================================================
# 7. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - quiet-hours block prevents provider send
    - ack closes reminder without duplicate delivery
    - duplicate retry does not create duplicate canonical reminder job
    - provider rejection creates append log but not canonical reminder corruption
    - dashboard reminder counts rebuild correctly from append history
  release_blockers:
    - reminder current_status derived from mutable provider-only state
    - acknowledgment lacks audit trail
    - quiet-hours override not traceable
