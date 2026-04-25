# ============================================================
# LIFE OS BACKEND SERVICE AND ORCHESTRATION EXACT DESIGN
# ============================================================

status: canonical-draft
layer: 920.meta
subfolder: 925.implementation-ready-freeze
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the backend application-service split for LifeOS.
- Define exact orchestration ownership between API, application service,
  domain write, outbox emission, projection refresh trigger, and review flow.
- Keep the design implementation-ready while still remaining design-only.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL.
- ERP-side DB work uses DATABASE_URL.
- This document defines design only and does not authorize execution.

principles:
- append-first write model
- canonical fact tables are the system of record
- read models are projections and can be rebuilt
- no in-place mutation for user history facts
- idempotency required for every externally repeatable write
- all cross-boundary side effects must flow through outbox or reviewed command

# ------------------------------------------------------------
# 1. backend root split
# ------------------------------------------------------------

backend_root_modules:
- api
- application
- domain
- infra
- projection
- integration
- jobs
- review
- telemetry
- shared

module_responsibility_summary:
  api:
  - HTTP route handlers
  - request envelope parsing
  - auth resolution
  - validation invocation
  - response envelope generation

  application:
  - use case orchestration
  - idempotency check
  - transaction boundaries
  - write ordering
  - outbox registration
  - review command preparation

  domain:
  - canonical write policy
  - domain invariants
  - canonical event naming
  - correction policy
  - aggregate-local calculations only

  infra:
  - repository implementation
  - SQL access
  - row mapping
  - idempotency store
  - transaction helper
  - lock abstraction

  projection:
  - read model refresh planning
  - dashboard projection
  - daily check-in summary projection
  - timeline materialization
  - stale projection rebuild support

  integration:
  - inbound integration mapping
  - outbound event payload mapping
  - replay-safe ingestion
  - source deduplication

  jobs:
  - outbox claim and dispatch
  - projection refresh batch
  - retry queue
  - failure quarantine
  - dead-letter movement

  review:
  - correction review creation
  - correction decision application
  - suspicious ingestion review
  - user-visible review queue generation

  telemetry:
  - trace id generation
  - request metrics
  - job metrics
  - audit emission
  - acceptance instrumentation

  shared:
  - common DTO
  - error object
  - time utility
  - id generation
  - pagination utility

# ------------------------------------------------------------
# 2. application service catalog
# ------------------------------------------------------------

application_services:
- record_habit_log_service
- record_health_metric_service
- create_goal_event_service
- record_daily_checkin_service
- append_life_event_service
- submit_integration_ingest_service
- retry_integration_ingest_service
- create_review_case_service
- apply_review_decision_service
- refresh_dashboard_projection_service
- refresh_timeline_projection_service
- claim_outbox_batch_service
- mark_outbox_dispatched_service
- mark_outbox_failed_service

service_contract_template:
- input_command
- auth_context
- idempotency_context
- transaction_scope
- canonical_write_set
- emitted_outbox_events
- projection_refresh_request
- response_payload

# ------------------------------------------------------------
# 3. write orchestration order
# ------------------------------------------------------------

canonical_write_order_rules:
  record_habit_log:
  - validate request
  - resolve auth context
  - compute idempotency fingerprint
  - open transaction
  - check duplicate request
  - insert canonical habit_log row
  - insert life_event_outbox row
  - insert external event_outbox row if needed
  - commit
  - schedule projection refresh

  record_health_metric:
  - validate metric_type and unit
  - resolve source and measurement_time
  - open transaction
  - check idempotency
  - insert canonical health_metric_log row
  - insert life_event_outbox row
  - commit
  - request health-related projection refresh

  create_goal_event:
  - validate goal scope
  - open transaction
  - check idempotency
  - insert goal_event canonical row
  - emit life_event_outbox row
  - optionally emit event_outbox for civilization-facing feed
  - commit
  - request dashboard projection refresh

  submit_integration_ingest:
  - validate source payload
  - map source entity
  - open transaction
  - check integration_ingest_idempotency_key
  - register ingest attempt
  - either:
    - append canonical rows directly if safe
    - or open review case if confidence below threshold
  - emit life_event_outbox if canonical append occurred
  - commit
  - request projection refresh if append occurred

prohibited_ordering:
- do not refresh projection before canonical commit
- do not emit external network side effect inside the same request transaction
- do not mutate historical canonical row to represent correction
- do not skip idempotency for retriable client write

# ------------------------------------------------------------
# 4. backend transaction boundary rules
# ------------------------------------------------------------

transaction_policy:
- one user write request maps to one primary DB transaction
- projection refresh is post-commit work
- outbox dispatch is separate from request transaction
- correction decision application is its own transaction
- integration replay processing uses per-source transaction with dedupe guard

lock_policy:
- no broad table lock for routine write
- row-level idempotency or unique constraint preferred
- outbox claim uses claim-safe batch pattern
- review decision apply may lock the active review case row

# ------------------------------------------------------------
# 5. repository ownership
# ------------------------------------------------------------

repositories:
  habit_log_repository:
  - insert_habit_log
  - list_habit_log_by_window
  - find_duplicate_by_idempotency

  health_metric_repository:
  - insert_metric
  - list_metrics_by_window
  - find_recent_metric_by_source

  goal_event_repository:
  - insert_goal_event
  - list_goal_events
  - find_goal_event_by_client_key

  life_event_outbox_repository:
  - enqueue_life_event
  - claim_batch
  - mark_done
  - mark_failed

  event_outbox_repository:
  - enqueue_external_event
  - claim_batch
  - mark_done
  - mark_failed

  integration_ingest_repository:
  - register_ingest
  - register_idempotency_key
  - read_last_attempt
  - mark_ingest_status

  review_case_repository:
  - create_review_case
  - claim_review_case
  - append_review_note
  - apply_review_decision

  system_control_repository:
  - read_control_flag
  - read_projection_version
  - update_projection_version

repository_rule:
- repository must not contain API envelope logic
- repository must not compute user-facing text
- repository returns storage-shaped result or stable domain DTO only

# ------------------------------------------------------------
# 6. outbox orchestration
# ------------------------------------------------------------

life_event_outbox_role:
- internal event feed for LifeOS projection, review, and local process chaining

event_outbox_role:
- cross-boundary event feed for other OS or civilization-facing consumers

outbox_status_model:
- pending
- claimed
- dispatched
- failed
- dead_letter

claim_pattern:
- batch size fixed by runner config
- claim uses stable ordering by created_at then primary key
- each claim stamps claimed_at and worker_id
- claim expiry policy returns abandoned claimed rows to pending

retry_policy:
- exponential backoff
- max attempt threshold
- dead-letter after threshold
- preserve original payload and error summary

# ------------------------------------------------------------
# 7. review orchestration
# ------------------------------------------------------------

review_case_types:
- integration_low_confidence
- correction_request
- suspicious_duplicate
- conflicting_health_metric
- conflicting_goal_transition

review_orchestration_rules:
- review creation is append-only
- final decision writes a review decision record
- accepted correction appends new canonical fact rows
- rejected correction updates review status only
- accepted low-confidence ingest appends canonical row after decision
- every accepted decision emits life_event_outbox

# ------------------------------------------------------------
# 8. projection orchestration
# ------------------------------------------------------------

projection_refresh_targets:
- dashboard_summary
- daily_checkin_summary
- timeline_feed
- recent_habit_progress
- recent_health_metric_snapshot

projection_refresh_modes:
- inline_schedule_only
- async_incremental_refresh
- full_rebuild
- cold_rebuild_after_version_change

rebuild_rules:
- projection reads only canonical tables and accepted review outputs
- projection can be dropped and rebuilt
- rebuild never reads civilization cross-schema views as source of truth

# ------------------------------------------------------------
# 9. integration orchestration
# ------------------------------------------------------------

integration_sources:
- manual_import
- device_sync
- partner_api
- civilization_inbox
- batch_csv_import

source_pipeline:
- intake validation
- normalize payload
- dedupe resolution
- source-specific mapper
- review threshold evaluation
- canonical append or review creation
- outbox emit
- projection refresh scheduling

# ------------------------------------------------------------
# 10. telemetry exactness
# ------------------------------------------------------------

trace_fields:
- trace_id
- request_id
- actor_id
- device_id
- idempotency_key
- service_name
- route_name
- use_case_name
- result_code

audit_required_events:
- canonical_append_succeeded
- canonical_append_rejected
- review_case_created
- review_decision_applied
- outbox_dispatch_failed
- projection_refresh_failed
- integration_ingest_replayed

# ------------------------------------------------------------
# 11. backend error contract
# ------------------------------------------------------------

error_families:
- validation_error
- auth_error
- idempotency_conflict
- duplicate_source_payload
- invariant_violation
- review_required
- projection_refresh_delayed
- outbox_dispatch_delayed
- internal_error

handling_rules:
- request transaction rollback on validation/auth/invariant/internal error
- return stable error code
- do not partially commit canonical write without matching outbox registration
- projection refresh failure after commit must not invalidate canonical commit

# ------------------------------------------------------------
# 12. module folder proposal
# ------------------------------------------------------------

folder_proposal:
- backend/api/routes/life
- backend/api/dto/life
- backend/application/life
- backend/domain/life
- backend/infra/db/life
- backend/projection/life
- backend/review/life
- backend/jobs/life
- backend/integration/life
- backend/telemetry/life

# ------------------------------------------------------------
# 13. acceptance gate
# ------------------------------------------------------------

acceptance_gate:
- every write use case has documented transaction order
- every repeatable write has idempotency policy
- every canonical append has paired life_event_outbox emission rule
- every cross-boundary event has event_outbox rule
- review-required branch is documented for ambiguous ingest
- projection refresh is explicitly post-commit
- rebuild does not depend on civilization cross-schema views

completion_meaning:
- backend service and orchestration design is fixed enough to derive
  runner design, repository interfaces, and service implementation stubs
  without reopening ownership questions.

