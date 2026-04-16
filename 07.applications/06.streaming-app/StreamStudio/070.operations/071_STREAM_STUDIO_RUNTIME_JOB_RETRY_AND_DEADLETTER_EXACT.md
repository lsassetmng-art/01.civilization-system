# ============================================================
# STREAM STUDIO RUNTIME JOB RETRY AND DEAD-LETTER EXACT
# ============================================================

status: draft
layer: operations-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact runtime job catalog, retry rules,
dead-letter handling, and reconciliation rules of StreamStudio.

# ============================================================
# 1. RUNTIME DESIGN PRINCIPLES
# ============================================================

principles:
- every async job must have a stable job_type
- every async job must have a stable target_ref
- every job execution must be auditable
- retryable failures and terminal failures must be distinguishable
- dead-letter is a visible operational state, not hidden storage
- canonical publish and external push failures must remain separable
- marketplace and membership failures must remain separable
- retry must never silently duplicate irreversible actions
- idempotency must be preserved across retries where applicable

# ============================================================
# 2. JOB TYPE CATALOG
# ============================================================

job_types:

  upload_and_media:
    - UPLOAD_INGEST_FINALIZER
    - MEDIA_PROCESSING_STATUS_POLLER
    - SUBTITLE_PACKAGING_JOB
    - THUMBNAIL_DERIVATIVE_JOB

  publish_and_release:
    - PUBLISH_READINESS_EVALUATOR
    - SCHEDULED_PUBLISH_EXECUTOR
    - PUBLISH_RECONCILIATION_JOB

  marketplace_and_commerce:
    - MARKETPLACE_LISTING_READINESS_EVALUATOR
    - SCHEDULED_LISTING_EXECUTOR
    - PAID_OFFER_WINDOW_TRANSITION_JOB
    - COMMERCE_SETTLEMENT_REFERENCE_SYNC_JOB

  membership_and_entitlement:
    - MEMBERSHIP_RULE_ACTIVATION_JOB
    - MEMBER_EARLY_ACCESS_EXPIRATION_JOB
    - ENTITLEMENT_RECONCILIATION_JOB
    - MEMBERSHIP_PROGRAM_STATE_TRANSITION_JOB

  external_push_and_connector:
    - EXTERNAL_PUSH_DISPATCHER
    - EXTERNAL_PUSH_CALLBACK_RECONCILIATION_JOB
    - EXTERNAL_PUSH_RETRY_JOB

  governance_and_notification:
    - SPLIT_CONFIRMATION_REMINDER_JOB
    - STALE_APPROVAL_EXPIRATION_JOB
    - AUDIT_RECONSTRUCTION_BUNDLE_BUILDER
    - NOTIFICATION_FANOUT_JOB

# ============================================================
# 3. COMMON JOB RECORD SHAPE
# ============================================================

common_job_record_shape:
  job_id: string
  job_type: string
  target_ref: string
  target_scope: string
  state: queued_or_running_or_succeeded_or_retry_wait_or_dead_letter_or_cancelled
  attempt_count: integer
  max_attempts: integer
  idempotency_key: string_or_null
  priority_code: low_or_normal_or_high_or_critical
  scheduled_at: iso8601
  started_at: iso8601_or_null
  finished_at: iso8601_or_null
  next_retry_at: iso8601_or_null
  last_error_code: string_or_null
  last_error_summary: string_or_null
  created_at: iso8601
  updated_at: iso8601

# ============================================================
# 4. RETRY CLASSIFICATION
# ============================================================

retry_classification:

  retryable_failures:
    - temporary_network_failure
    - downstream_timeout
    - temporary_unavailable
    - callback_delay
    - transient_rate_limit
    - optimistic_lock_retryable
    - stale_read_reconciliation_needed

  terminal_failures:
    - invalid_request_shape
    - permission_denied
    - rights_blocked
    - policy_blocked
    - invalid_price_configuration
    - invalid_membership_binding
    - invalid_split_configuration
    - unsupported_file_format
    - downstream_rejected_permanently

  operator_attention_required:
    - repeated_connector_failure
    - marketplace_rejection
    - publish_reconciliation_mismatch
    - entitlement_reconciliation_mismatch
    - settlement_sync_partial_failure

# ============================================================
# 5. RETRY POLICY BY JOB TYPE
# ============================================================

retry_policy_by_job_type:

  UPLOAD_INGEST_FINALIZER:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 30
    notes:
      - do not duplicate ingest finalization when idempotency_key matches

  MEDIA_PROCESSING_STATUS_POLLER:
    max_attempts: 20
    backoff: progressive_poll
    base_delay_seconds: 60
    notes:
      - polling stops when terminal media state is reached

  SUBTITLE_PACKAGING_JOB:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 60

  THUMBNAIL_DERIVATIVE_JOB:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 30

  PUBLISH_READINESS_EVALUATOR:
    max_attempts: 3
    backoff: fixed
    base_delay_seconds: 20

  SCHEDULED_PUBLISH_EXECUTOR:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 60
    notes:
      - duplicate publish must be blocked by publish idempotency

  PUBLISH_RECONCILIATION_JOB:
    max_attempts: 8
    backoff: progressive_poll
    base_delay_seconds: 120

  MARKETPLACE_LISTING_READINESS_EVALUATOR:
    max_attempts: 3
    backoff: fixed
    base_delay_seconds: 30

  SCHEDULED_LISTING_EXECUTOR:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 60
    notes:
      - duplicate listing activation must be blocked by listing idempotency

  PAID_OFFER_WINDOW_TRANSITION_JOB:
    max_attempts: 5
    backoff: fixed
    base_delay_seconds: 60

  COMMERCE_SETTLEMENT_REFERENCE_SYNC_JOB:
    max_attempts: 10
    backoff: exponential
    base_delay_seconds: 300

  MEMBERSHIP_RULE_ACTIVATION_JOB:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 60

  MEMBER_EARLY_ACCESS_EXPIRATION_JOB:
    max_attempts: 5
    backoff: fixed
    base_delay_seconds: 60

  ENTITLEMENT_RECONCILIATION_JOB:
    max_attempts: 10
    backoff: exponential
    base_delay_seconds: 300

  MEMBERSHIP_PROGRAM_STATE_TRANSITION_JOB:
    max_attempts: 5
    backoff: fixed
    base_delay_seconds: 60

  EXTERNAL_PUSH_DISPATCHER:
    max_attempts: 7
    backoff: exponential_with_jitter
    base_delay_seconds: 120
    notes:
      - connector retryability must be evaluated per downstream response

  EXTERNAL_PUSH_CALLBACK_RECONCILIATION_JOB:
    max_attempts: 12
    backoff: progressive_poll
    base_delay_seconds: 180

  EXTERNAL_PUSH_RETRY_JOB:
    max_attempts: 7
    backoff: exponential_with_jitter
    base_delay_seconds: 300

  SPLIT_CONFIRMATION_REMINDER_JOB:
    max_attempts: 3
    backoff: fixed
    base_delay_seconds: 600

  STALE_APPROVAL_EXPIRATION_JOB:
    max_attempts: 3
    backoff: fixed
    base_delay_seconds: 300

  AUDIT_RECONSTRUCTION_BUNDLE_BUILDER:
    max_attempts: 5
    backoff: exponential
    base_delay_seconds: 120

  NOTIFICATION_FANOUT_JOB:
    max_attempts: 5
    backoff: exponential_with_jitter
    base_delay_seconds: 60

# ============================================================
# 6. BACKOFF POLICY DEFINITIONS
# ============================================================

backoff_policies:

  fixed:
    formula: next_retry_at = now + base_delay

  exponential:
    formula: next_retry_at = now + base_delay * (2 ^ (attempt_count - 1))

  exponential_with_jitter:
    formula: next_retry_at = now + randomized(base_delay * (2 ^ (attempt_count - 1)))

  progressive_poll:
    formula:
      - attempts_1_to_5: 1x base_delay
      - attempts_6_to_10: 2x base_delay
      - attempts_11_plus: 4x base_delay

jitter_rule:
- jitter is recommended for connector-facing and notification fanout jobs
- jitter must not shift a scheduled publish or listing earlier than requested time

# ============================================================
# 7. DEAD-LETTER ENTRY CONDITIONS
# ============================================================

dead_letter_entry_conditions:
- attempt_count_exceeded_max_attempts
- terminal_failure_code_received
- invalid_state_transition_detected
- duplicate_irreversible_action_risk_detected
- manual_operator_marked_terminal
- reconciliation_mismatch_persisted_beyond_retry_window

dead_letter_state_meaning:
- automatic retry has stopped
- item requires explicit operator visibility
- item must remain linked to target_ref and latest error context

# ============================================================
# 8. DEAD-LETTER RECORD MINIMUM SHAPE
# ============================================================

dead_letter_record_shape:
  dead_letter_id: string
  original_job_id: string
  job_type: string
  target_ref: string
  target_scope: string
  terminal_reason_code: string
  terminal_reason_summary: string
  final_attempt_count: integer
  last_error_code: string_or_null
  recommended_operator_action: inspect_or_retry_as_new_or_override_or_cancel
  created_at: iso8601
  updated_at: iso8601

# ============================================================
# 9. OPERATOR ACTIONS FROM DEAD-LETTER
# ============================================================

operator_actions:
- inspect_execution_history
- inspect_target_state
- retry_as_new_job_when_safe
- cancel_terminal_target
- apply_policy_override_when_authorized
- mark_resolved_without_retry
- rebuild_audit_bundle

authorization_rules:
- retry_as_new_job requires normal operational permission on target scope
- apply_policy_override requires admin_override
- mark_resolved_without_retry requires producer_or_admin
- rebuild_audit_bundle requires audit-capable permission

# ============================================================
# 10. JOB STATEFLOW
# ============================================================

job_stateflow:
- queued
- running
- succeeded
- retry_wait
- dead_letter
- cancelled

transitions:
- queued -> running
- running -> succeeded
- running -> retry_wait
- retry_wait -> running
- running -> dead_letter
- retry_wait -> dead_letter
- queued -> cancelled
- running -> cancelled_only_when_safe
- dead_letter -> queued_as_new_job_only

forbidden_transitions:
- succeeded -> running
- dead_letter -> running_directly
- cancelled -> running
- succeeded -> retry_wait

# ============================================================
# 11. IDEMPOTENCY RULES FOR ASYNC EXECUTION
# ============================================================

idempotency_rules:
- publish executor must use publish_ref-scoped idempotency
- listing executor must use listing_ref-scoped idempotency
- membership activation job must use program_ref-scoped idempotency
- external push dispatcher must use external_push_job-scoped idempotency
- notification fanout must suppress duplicate delivery when delivery key matches
- settlement sync must not duplicate period records when source_ref and period match

duplicate_protection_rules:
- irreversible actions require idempotency key check before execution
- downstream connector request payload hash should be preserved for replay comparison
- retry must compare current target state before re-dispatch

# ============================================================
# 12. RECONCILIATION RULES
# ============================================================

reconciliation_rules:

  publish_reconciliation:
    verifies:
      - canonical_publish_record_exists
      - publish_request_state_matches
      - viewer_access_state_matches_policy
    mismatch_action:
      - create_operator_attention_event
      - retry_when_retryable
      - dead_letter_when_terminal

  listing_reconciliation:
    verifies:
      - marketplace_listing_ref_exists
      - listing_status_matches_local_state
      - paid_offer_window_matches
    mismatch_action:
      - create_operator_attention_event
      - retry_when_retryable
      - dead_letter_when_terminal

  entitlement_reconciliation:
    verifies:
      - membership_rule_binding_exists
      - entitled_access_matches_tier_rule
      - early_access_expiration_applied
    mismatch_action:
      - create_operator_attention_event
      - retry_when_retryable
      - dead_letter_when_terminal

  settlement_reconciliation:
    verifies:
      - source_ref_period_uniqueness
      - gross_fee_net_values_present
      - currency_consistency
    mismatch_action:
      - create_operator_attention_event
      - retry_when_retryable
      - dead_letter_when_terminal

# ============================================================
# 13. PRIORITY POLICY
# ============================================================

priority_policy:
  critical:
    - SCHEDULED_PUBLISH_EXECUTOR
    - SCHEDULED_LISTING_EXECUTOR
    - MEMBERSHIP_RULE_ACTIVATION_JOB
    - MEMBER_EARLY_ACCESS_EXPIRATION_JOB

  high:
    - EXTERNAL_PUSH_DISPATCHER
    - PUBLISH_RECONCILIATION_JOB
    - MARKETPLACE_LISTING_READINESS_EVALUATOR
    - ENTITLEMENT_RECONCILIATION_JOB

  normal:
    - UPLOAD_INGEST_FINALIZER
    - SUBTITLE_PACKAGING_JOB
    - THUMBNAIL_DERIVATIVE_JOB
    - COMMERCE_SETTLEMENT_REFERENCE_SYNC_JOB
    - AUDIT_RECONSTRUCTION_BUNDLE_BUILDER
    - NOTIFICATION_FANOUT_JOB

  low:
    - SPLIT_CONFIRMATION_REMINDER_JOB
    - STALE_APPROVAL_EXPIRATION_JOB

# ============================================================
# 14. OBSERVABILITY REQUIREMENTS
# ============================================================

observability_requirements:
- every job execution emits attempt_start and attempt_finish events
- every retry_wait emits next_retry_at
- every dead_letter emits terminal_reason_code
- queue depth by job_type must be visible
- dead_letter count by job_type must be visible
- median execution duration by job_type should be measurable
- downstream connector failure rate should be measurable

minimum_metrics:
- jobs_created_total
- jobs_succeeded_total
- jobs_retry_wait_total
- jobs_dead_letter_total
- jobs_cancelled_total
- execution_duration_ms
- attempt_count_distribution
- downstream_failure_total

# ============================================================
# 15. NOTIFICATION RULES FOR OPERATIONS EVENTS
# ============================================================

notification_rules:
- critical scheduled publish failure must notify creator and producer
- critical listing failure must notify creator and producer
- membership activation failure must notify creator and membership_operator
- repeated connector failure must notify creator and admin
- dead_letter entry for monetized target must notify creator and producer
- settlement sync partial failure may notify admin summary channel only

# ============================================================
# 16. FIXED RUNTIME STATEMENT
# ============================================================

fixed_statement:
- async execution in StreamStudio is stateful, auditable, and retry-governed
- dead-letter is an explicit visible terminal state
- publish, listing, membership, connector, and settlement failures remain separated
- idempotency and reconciliation are mandatory for irreversible async actions
