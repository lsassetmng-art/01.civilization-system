# ============================================================
# LIFE OS EVENT CONTRACT EXACT DICTIONARY
# ============================================================

status: canonical-draft
document_code: 925330
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact event naming, envelope, and field semantics used across LifeOS.
- Prevent payload drift between write APIs, outbox events, result events, and projections.
- Keep LifeOS event usage compatible with the rule that mutable persona truth does not live in LifeOS.

principles:
- append-first
- immutable event record
- idempotent consumption
- replay-safe projection rebuild
- no canonical persona mutation inside LifeOS
- request event then external apply then result event
- signed snapshot for persona-facing display if persona rendering is involved

# ============================================================
# 1. COMMON EVENT ENVELOPE
# ============================================================

event_envelope:
  required_fields:
    - event_id
    - event_type
    - event_version
    - event_namespace
    - aggregate_type
    - aggregate_id
    - occurred_at
    - produced_by
    - trace_id
    - idempotency_key
    - payload_json
  optional_fields:
    - causation_event_id
    - correlation_id
    - request_id
    - actor_user_id
    - actor_device_id
    - source_system
    - target_system
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - privacy_tier
    - retention_policy_code
    - signature_ref
    - partition_date
  semantics:
    event_id:
      type: uuid
      meaning: immutable unique event identity
    event_type:
      type: text
      meaning: exact business event code
    event_version:
      type: integer
      meaning: contract version, starts at 1
    event_namespace:
      type: text
      allowed_values:
        - life.record
        - life.goal
        - life.review
        - life.alert
        - life.reminder
        - life.integration
        - life.sync
        - life.export
        - life.persona
    aggregate_type:
      type: text
      examples:
        - habit_log
        - health_metric_log
        - goal_event
        - review_session
        - reminder_job
        - integration_ingest_job
    aggregate_id:
      type: uuid
      meaning: logical aggregate reference
    occurred_at:
      type: timestamptz
      meaning: domain occurrence time, not queue insertion time
    produced_by:
      type: text
      examples:
        - api.life.v1
        - batch.import.csv
        - scheduler.reminder
        - sync.rebuild.runner
    trace_id:
      type: uuid
      meaning: end-to-end request tracing key
    idempotency_key:
      type: text
      meaning: dedupe key for same semantic action
    payload_json:
      type: jsonb
      meaning: exact event business payload

event_storage_split:
  life_event_outbox:
    role: canonical business event outbox for LifeOS internal and external publication
  event_outbox:
    role: generalized delivery queue / transport-facing relay when protocol-specific dispatch is needed
  event_inbox:
    role: not canonical by default; consume into request/result registry or projection-specific tables if needed
  rule:
    - life_event_outbox is the primary business outbox
    - event_outbox is derivative delivery-oriented state if introduced in implementation

# ============================================================
# 2. EXACT EVENT TYPE CATALOG
# ============================================================

life_record_events:
  - event_type: life.record.habit.logged.v1
    aggregate_type: habit_log
    payload_fields:
      - habit_log_id
      - user_id
      - habit_code
      - logged_at
      - value_numeric
      - value_text
      - source_channel
      - note_text
  - event_type: life.record.health_metric.logged.v1
    aggregate_type: health_metric_log
    payload_fields:
      - health_metric_log_id
      - user_id
      - metric_code
      - measured_at
      - value_numeric
      - value_unit
      - source_channel
      - note_text
  - event_type: life.record.corrected.requested.v1
    aggregate_type: correction_request
    payload_fields:
      - correction_request_id
      - target_record_type
      - target_record_id
      - requested_by
      - reason_code
      - requested_patch_json

life_goal_events:
  - event_type: life.goal.created.v1
    aggregate_type: goal_event
    payload_fields:
      - goal_event_id
      - user_id
      - goal_code
      - title
      - goal_type
      - started_at
      - due_at
      - priority_code
  - event_type: life.goal.progress.logged.v1
    aggregate_type: goal_event
    payload_fields:
      - goal_event_id
      - progress_event_id
      - progress_kind
      - progress_value
      - progress_note
      - progressed_at
  - event_type: life.goal.closed.v1
    aggregate_type: goal_event
    payload_fields:
      - goal_event_id
      - closed_at
      - close_reason_code
      - close_note

life_review_events:
  - event_type: life.review.daily_checkin.submitted.v1
    aggregate_type: review_session
    payload_fields:
      - review_session_id
      - user_id
      - checkin_date
      - mood_code
      - energy_code
      - stress_code
      - summary_text
      - submitted_at
  - event_type: life.review.generated.v1
    aggregate_type: review_session
    payload_fields:
      - review_session_id
      - review_type
      - generated_at
      - projection_snapshot_id
      - recommendation_bundle_id
  - event_type: life.review.acknowledged.v1
    aggregate_type: review_session
    payload_fields:
      - review_session_id
      - acknowledged_at
      - acknowledged_by

life_alert_events:
  - event_type: life.alert.raised.v1
    aggregate_type: alert_case
    payload_fields:
      - alert_case_id
      - alert_code
      - alert_severity
      - raised_at
      - derived_from_projection_id
      - result_status
  - event_type: life.alert.dismissed.v1
    aggregate_type: alert_case
    payload_fields:
      - alert_case_id
      - dismissed_at
      - dismissed_by
      - dismiss_reason_code

life_reminder_events:
  - event_type: life.reminder.scheduled.v1
    aggregate_type: reminder_job
    payload_fields:
      - reminder_job_id
      - reminder_code
      - target_user_id
      - due_at
      - channel_code
      - quiet_hours_policy_code
  - event_type: life.reminder.delivery.attempted.v1
    aggregate_type: reminder_job
    payload_fields:
      - reminder_job_id
      - attempt_id
      - attempted_at
      - channel_code
      - delivery_provider_code
      - result_status
      - provider_reference
  - event_type: life.reminder.acknowledged.v1
    aggregate_type: reminder_job
    payload_fields:
      - reminder_job_id
      - acknowledged_at
      - acknowledged_by
      - acknowledgment_channel

life_integration_events:
  - event_type: life.integration.import.accepted.v1
    aggregate_type: integration_ingest_job
    payload_fields:
      - ingest_job_id
      - import_source_code
      - imported_at
      - imported_record_count
      - normalized_manifest_id
  - event_type: life.integration.import.rejected.v1
    aggregate_type: integration_ingest_job
    payload_fields:
      - ingest_job_id
      - rejected_at
      - reject_reason_code
      - rejected_record_count
  - event_type: life.integration.sync.completed.v1
    aggregate_type: integration_sync_job
    payload_fields:
      - sync_job_id
      - completed_at
      - source_checkpoint_code
      - imported_count
      - skipped_count
      - failed_count

life_export_events:
  - event_type: life.export.package.generated.v1
    aggregate_type: export_job
    payload_fields:
      - export_job_id
      - export_type
      - generated_at
      - package_manifest_id
      - format_code
      - record_count
  - event_type: life.export.package.downloaded.v1
    aggregate_type: export_job
    payload_fields:
      - export_job_id
      - downloaded_at
      - downloaded_by
      - signature_ref

life_persona_events:
  - event_type: life.persona.request.submitted.v1
    aggregate_type: persona_request
    payload_fields:
      - persona_request_id
      - persona_id
      - request_kind
      - submitted_at
      - reason_code
      - request_payload_json
  - event_type: life.persona.result.received.v1
    aggregate_type: persona_request
    payload_fields:
      - persona_request_id
      - persona_id
      - result_event_id
      - result_status
      - received_at
      - result_payload_json
  - event_type: life.persona.snapshot.applied.v1
    aggregate_type: persona_snapshot_binding
    payload_fields:
      - persona_id
      - snapshot_id
      - applied_snapshot_id
      - applied_at
      - signature_ref
      - display_contract_code

# ============================================================
# 3. REQUEST / RESULT CONTRACT RULES
# ============================================================

request_result_contract:
  request_rules:
    - request event must carry request_kind and reason_code
    - request event must include idempotency_key
    - request event must not contain direct persona mutable state patch for local apply
    - request event payload_json may include desired_effect but not canonical mutation result
  result_rules:
    - result event must include original persona_request_id
    - result event must include result_status
    - result event may include applied_snapshot_id
    - result event may include signature_ref when rendering-safe persona output is returned
  result_status_values:
    - accepted
    - rejected
    - partially_applied
    - no_effect
    - superseded

persona_boundary_rules:
  lifeos_may_store:
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - request_event_id
    - result_event_id
    - signed_snapshot_ref
    - local_view_config
    - app_local_binding_state
  lifeos_must_not_store_as_canonical:
    - mutable persona state
    - internal memory truth
    - internal emotional state truth
    - growth canonical truth
    - trust canonical truth
    - signature canonical authority

# ============================================================
# 4. IDEMPOTENCY AND REPLAY RULES
# ============================================================

idempotency_rules:
  write_api:
    - same user_id plus same endpoint plus same idempotency_key must map to same semantic action
  importer:
    - source_record_key plus source_system plus normalized_hash prevents duplicate import
  reminders:
    - reminder_job_id plus due_at plus channel_code prevents duplicate schedule creation
  event_consumers:
    - event_id is primary dedupe key
    - idempotency_key is secondary semantic dedupe key

replay_rules:
  projection_rebuild:
    - rebuild from canonical event or append-only log only
    - do not replay from stale view table
  export_regeneration:
    - export package may be regenerated from canonical records and manifest rule set
  persona_binding_refresh:
    - reapply signed snapshot reference without mutating canonical persona truth inside LifeOS

# ============================================================
# 5. ERROR CONTRACT
# ============================================================

error_contract:
  error_envelope_fields:
    - error_code
    - error_message
    - trace_id
    - request_id
    - retryable
    - field_errors
  error_code_catalog:
    - LIFE_INVALID_PAYLOAD
    - LIFE_DUPLICATE_IDEMPOTENCY_KEY
    - LIFE_RECORD_NOT_FOUND
    - LIFE_PROJECTION_STALE
    - LIFE_IMPORT_SCHEMA_MISMATCH
    - LIFE_EXPORT_NOT_READY
    - LIFE_PERSONA_REQUEST_REJECTED
    - LIFE_PERSONA_SNAPSHOT_INVALID
    - LIFE_DELIVERY_PROVIDER_FAILURE

# ============================================================
# 6. CONTRACT GOVERNANCE
# ============================================================

contract_governance:
  versioning:
    - additive fields allowed within same version if backward-compatible
    - destructive rename requires new event_version
  publication:
    - update dictionary first
    - then update API exact payload design
    - then update screen-stateflow and implementation module design
  acceptance_gate:
    - every emitted event type must exist in this dictionary
    - every consumed result event must exist in this dictionary
    - every projection must declare which event types it consumes

# ============================================================
# 7. LIFE-PERSONA INTERACTION NORMAL FORM
# ============================================================

life_persona_interaction_normal_form:
  allowed_flow:
    - LifeOS request event created
    - PersonaOS apply performed outside LifeOS
    - PersonaOS result event received by LifeOS
    - signed snapshot applied for display if needed
  prohibited_flow:
    - LifeOS direct mutation of persona canonical state
    - LifeOS local canonical trust or growth state for persona
    - LifeOS local canonical memory truth for persona
