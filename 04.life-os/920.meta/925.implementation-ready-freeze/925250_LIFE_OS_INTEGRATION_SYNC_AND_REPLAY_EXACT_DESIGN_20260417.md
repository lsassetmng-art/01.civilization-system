# ============================================================
# LIFE OS INTEGRATION SYNC AND REPLAY EXACT DESIGN
# ============================================================

status: canonical-draft
layer: 920.meta
subfolder: 925.implementation-ready-freeze
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact design for inbound integration, device sync, replay safety,
  export events, and reconciliation flow.
- Separate source ingestion correctness from user-facing dashboard state.
- Keep the flow implementation-ready while remaining design-only.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL.
- ERP-side DB work uses DATABASE_URL.
- This document does not authorize execution.

principles:
- source payloads are not canonical until validated and accepted
- replay is expected, so idempotency is mandatory
- sync conflict resolution must not overwrite canonical history
- integration state is observable through registry tables
- all exportable life events use explicit event contract versioning

# ------------------------------------------------------------
# 1. integration scope
# ------------------------------------------------------------

covered_flows:
- device metric sync
- manual import
- partner webhook ingest
- civilization inbound event ingest
- outbound life event export
- replay and reprocess
- sync status polling
- import review queue
- reconciliation report generation

excluded_from_this_doc:
- UI screen detail
- core canonical table DDL
- generic auth framework
- non-life ERP export

# ------------------------------------------------------------
# 2. source classes
# ------------------------------------------------------------

integration_source_classes:
- trusted_device
- semi_trusted_partner
- user_uploaded_file
- internal_civilization_source
- test_fixture_source

trust_behavior:
  trusted_device:
  - accepts append if schema-valid and source mapping exists
  - still dedupes
  - review only on invariant conflict

  semi_trusted_partner:
  - accepts only after stricter mapping
  - review on confidence threshold failure
  - review on unit mismatch

  user_uploaded_file:
  - parse first
  - row-level validation
  - may split rows into accepted and review-required

  internal_civilization_source:
  - map via stable contract version
  - reject unknown event version
  - require source trace id

  test_fixture_source:
  - non-production only
  - disabled by production control flag

# ------------------------------------------------------------
# 3. inbound pipeline
# ------------------------------------------------------------

inbound_pipeline:
- receive payload
- resolve source registration
- compute source payload hash
- check integration_ingest_idempotency_key
- register ingest attempt in integration_ingest_registry
- validate transport envelope
- normalize payload to integration DTO
- map normalized DTO to canonical command candidate
- evaluate confidence and invariant compatibility
- branch:
  - accepted -> append canonical fact + emit outbox
  - review_required -> create review case
  - rejected -> store failure result
- write result summary
- expose sync status

required_registry_fields:
- ingest_id
- source_class
- source_name
- source_trace_id
- payload_hash
- contract_version
- attempt_status
- accepted_count
- review_required_count
- rejected_count
- first_seen_at
- last_attempt_at

# ------------------------------------------------------------
# 4. idempotency and replay
# ------------------------------------------------------------

idempotency_layers:
- transport idempotency key
- source trace id
- payload hash
- canonical unique constraints for high-value duplicates

replay_types:
- exact_payload_replay
- partial_batch_retry
- source_window_replay
- manual_reprocess_after_mapping_fix

replay_rules:
- exact replay must return stable result summary
- replay must not double-append canonical fact
- replay after accepted correction still points to original ingest record
- manual reprocess creates new execution attempt but links to same source identity
- replayable result must preserve original failure reason and new reprocess reason

# ------------------------------------------------------------
# 5. sync sessions
# ------------------------------------------------------------

sync_session_entities:
- sync_session
- sync_session_item
- sync_checkpoint
- sync_error_summary

session_lifecycle:
- created
- running
- partially_succeeded
- succeeded
- failed
- cancelled

checkpoint_rules:
- each source maintains checkpoint by source actor and stream
- checkpoint update only after successful canonical acceptance or safe review registration
- failed batch does not advance checkpoint
- manual reset requires admin or controlled review approval

# ------------------------------------------------------------
# 6. contract versioning
# ------------------------------------------------------------

contract_versioning_rules:
- every inbound partner or civilization event declares contract_version
- unknown major version is rejected
- backward-compatible minor changes may be normalized
- version mapping table is configuration, not hard-coded per route
- export events include producer_version and schema_version

export_event_fields:
- event_id
- event_name
- event_version
- occurred_at
- actor_id
- trace_id
- payload
- source_system
- target_scope

# ------------------------------------------------------------
# 7. reconciliation flow
# ------------------------------------------------------------

reconciliation_use_cases:
- expected source count vs accepted count
- source checkpoint vs last accepted canonical timestamp
- review queue backlog per source
- export dispatch failure backlog
- duplicate payload detection summary

reconciliation_outputs:
- source summary row
- unresolved conflict list
- lag severity
- required operator action
- replay recommendation

# ------------------------------------------------------------
# 8. conflict handling
# ------------------------------------------------------------

conflict_types:
- unit_conflict
- timestamp_conflict
- duplicate_measurement_conflict
- impossible_transition_conflict
- unknown_goal_reference
- source_identity_conflict

resolution_policy:
- unit conflict -> review required
- impossible transition -> reject or review depending on source class
- duplicate measurement -> stable duplicate result, no append
- unknown goal reference -> reject with retryable mapping error
- source identity conflict -> quarantine until mapping fixed

# ------------------------------------------------------------
# 9. outbound export flow
# ------------------------------------------------------------

outbound_flow:
- canonical append commits
- event_outbox row created
- dispatcher claims pending batch
- event payload mapper builds export contract
- dispatch to target transport
- success marks done
- failure marks retry or dead-letter

transport_targets:
- civilization event consumer
- internal analytics pipeline
- notification subsystem
- future partner export

dispatch_guards:
- do not dispatch without event version
- do not delete failed event payload
- preserve last error summary
- preserve attempt count

# ------------------------------------------------------------
# 10. observability and support
# ------------------------------------------------------------

required_metrics:
- ingest_accept_rate
- ingest_review_rate
- ingest_reject_rate
- replay_success_rate
- checkpoint_lag
- outbox_dispatch_fail_rate
- dead_letter_count

required_support_views:
- source_health_summary
- replay_candidate_list
- review_backlog_by_source
- export_dead_letter_list
- checkpoint_lag_summary

# ------------------------------------------------------------
# 11. API touchpoints
# ------------------------------------------------------------

api_touchpoints:
- POST /api/life/v1/integrations/ingest
- POST /api/life/v1/integrations/replay
- GET  /api/life/v1/integrations/status/{ingestId}
- GET  /api/life/v1/sync/status
- POST /api/life/v1/sync/request
- GET  /api/life/v1/review/queue

binding_rules:
- write endpoints require idempotency key
- replay endpoint requires replay reason
- status endpoints read registry/projection only
- sync request may be accepted even if actual work is async

# ------------------------------------------------------------
# 12. runner relation
# ------------------------------------------------------------

runner_relation:
- migration runner creates integration registry tables later
- verify runner checks replay safety and duplicate suppression
- implementation runner uses fixed session and checkpoint semantics
- no runner may bypass idempotency registry

# ------------------------------------------------------------
# 13. acceptance gate
# ------------------------------------------------------------

acceptance_gate:
- every source class has declared trust behavior
- every replay type has non-duplicate guarantee
- checkpoint advancement rules are fixed
- export event versioning is fixed
- conflict types have explicit resolution branch
- reconciliation outputs are defined
- transport failure does not mutate canonical facts

completion_meaning:
- integration, sync, replay, and export flow are fixed enough to derive
  tables, jobs, and API bindings without reopening control flow questions.

