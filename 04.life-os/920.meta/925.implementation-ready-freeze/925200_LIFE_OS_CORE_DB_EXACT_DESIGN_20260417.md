# ============================================================
# LIFE OS CORE DB EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
layer: 120.implementation / db-exact-design
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact database design for the first canonical LifeOS core schema.
- Define the tables, keys, indexes, constraints, ownership boundaries, and migration order.
- Keep this document implementation-ready without executing any SQL yet.

db_execution_policy:
- This document is design only.
- No SQL execution is included here.
- Persona-side DB work must use PERSONA_DATABASE_URL when implementation begins.
- ERP-side DB work must use DATABASE_URL when implementation begins.
- SQL execution must follow the standard Termux one-block rule at implementation time.
- DB review must include Sato (DB).

scope:
- Canonical schema: life
- Scope included:
  - system_control
  - habit_log
  - health_metric_log
  - goal_event
  - life_event_outbox
  - event_outbox
  - integration ingestion registry
  - idempotency and audit support tables
- Scope excluded for this document:
  - UI tables
  - analytics marts
  - long-term ML feature stores
  - ERP delivery tables
  - Persona rendering caches

design_principles:
- Keep the first canonical schema small and additive.
- Prefer append-first logs over destructive updates.
- Separate user-entered facts from derived projections.
- Separate local life-domain events from external integration events.
- Make replay and rebuild possible from canonical logs.
- Every externally visible mutation must be explainable from stored facts.
- Soft-deletion is allowed only where history must be preserved.
- Time is stored in timestamptz.
- JSONB is allowed only for bounded extension fields, not core relational identity.

# ============================================================
# 1. SCHEMA BOUNDARY
# ============================================================

canonical_schema:
- life

schema_ownership_rules:
- The life schema stores LifeOS-owned canonical facts and execution support tables.
- Cross-OS or cross-domain views may read from life, but they do not own life.
- civilization-side derived views must be rebuildable and must not become the source of truth.
- The life schema must stay valid even if other schemas are rebuilt or absent.

primary_entity_axes:
- person axis
- habit axis
- metric axis
- goal axis
- event axis
- integration source axis

identity_rules:
- Primary keys use uuid unless the record is an execution/log row where bigserial is operationally simpler.
- Business-natural keys may exist as unique secondary keys where replay, import, or idempotency require them.
- Every canonical table has created_at and updated_at unless it is a strict append-only execution log.

# ============================================================
# 2. TABLE GROUPS
# ============================================================

table_groups:
- control and migration support
- canonical life facts
- event and outbox
- integration ingestion and idempotency
- verification and acceptance support

canonical_first_bundle_tables:
- system_control
- habit_log
- health_metric_log
- goal_event
- life_event_outbox
- event_outbox
- integration_ingest_registry
- integration_ingest_idempotency_key
- life_record_revision_log

support_tables_already designed elsewhere:
- db_bootstrap_registry
- db_migration_lock
- db_migration_registry
- db_migration_sql_store
- db_migration_execution_log
- db_ddl_audit_log
- db_verify_case_registry
- db_verify_result_log

# ============================================================
# 3. EXACT TABLE DESIGNS
# ============================================================

## 3.1 system_control

purpose:
- Stores singleton-like control values for LifeOS runtime and rebuild coordination.
- Holds small mutable control state that does not belong in logs.

grain:
- One row per control_key.

columns:
- control_key: text, PK
- control_scope: text, not null
- control_value_text: text, not null default ''
- control_value_json: jsonb, not null default '{}'::jsonb
- control_status: text, not null
- note: text, not null default ''
- created_at: timestamptz, not null default now()
- updated_at: timestamptz, not null default now()

constraints:
- PK(control_key)
- CHECK control_status in ('active','inactive','locked')
- CHECK length(control_key) > 0
- CHECK length(control_scope) > 0

indexes:
- idx_system_control_scope on (control_scope)
- idx_system_control_status on (control_status)

example_keys:
- outbox.dispatch.enabled
- rebuild.health_metric_projection.enabled
- ingestion.external.enabled

## 3.2 habit_log

purpose:
- Canonical append-oriented log of habit records and habit state changes.

grain:
- One row per habit event or habit observation.

columns:
- habit_log_id: uuid, PK
- person_id: uuid, not null
- habit_id: uuid, not null
- source_type: text, not null
- event_type: text, not null
- recorded_on_local_date: date, not null
- occurred_at: timestamptz, not null
- quantity_numeric: numeric(18,6), null
- quantity_unit: text, null
- status_value: text, null
- note: text, not null default ''
- source_ref_type: text, null
- source_ref_id: uuid, null
- idempotency_key: text, null
- is_deleted: boolean, not null default false
- created_at: timestamptz, not null default now()
- updated_at: timestamptz, not null default now()

constraints:
- PK(habit_log_id)
- CHECK source_type in ('manual','assistant','import','integration','system')
- CHECK event_type in ('planned','done','skipped','corrected','deleted')
- CHECK quantity_numeric is null or quantity_numeric >= 0
- UNIQUE(idempotency_key) where idempotency_key is not null

indexes:
- idx_habit_log_person_date on (person_id, recorded_on_local_date desc)
- idx_habit_log_habit_date on (habit_id, recorded_on_local_date desc)
- idx_habit_log_occurred_at on (occurred_at desc)
- idx_habit_log_source_ref on (source_ref_type, source_ref_id)
- idx_habit_log_active_person on (person_id, is_deleted, recorded_on_local_date desc)

ownership_notes:
- This is canonical history, not current-state cache.
- Daily completion views must be derived from this log, not replace it.

## 3.3 health_metric_log

purpose:
- Canonical append-oriented log for health or body metrics.

grain:
- One row per metric observation.

columns:
- health_metric_log_id: uuid, PK
- person_id: uuid, not null
- metric_type: text, not null
- metric_value_numeric: numeric(18,6), not null
- metric_unit: text, not null
- measured_at: timestamptz, not null
- measured_on_local_date: date, not null
- source_type: text, not null
- measurement_context: text, null
- confidence_level: text, null
- source_ref_type: text, null
- source_ref_id: uuid, null
- idempotency_key: text, null
- note: text, not null default ''
- is_deleted: boolean, not null default false
- created_at: timestamptz, not null default now()
- updated_at: timestamptz, not null default now()

constraints:
- PK(health_metric_log_id)
- CHECK metric_type in ('weight','body_fat','bmi','waist','steps','sleep_hours','heart_rate','blood_pressure_systolic','blood_pressure_diastolic','custom')
- CHECK metric_value_numeric >= 0
- CHECK source_type in ('manual','device','import','integration','assistant','system')
- CHECK confidence_level is null or confidence_level in ('high','medium','low')
- UNIQUE(idempotency_key) where idempotency_key is not null

indexes:
- idx_health_metric_log_person_type_date on (person_id, metric_type, measured_at desc)
- idx_health_metric_log_date on (measured_on_local_date desc)
- idx_health_metric_log_source_ref on (source_ref_type, source_ref_id)

ownership_notes:
- Corrections create new rows and optionally mark prior rows deleted, rather than in-place silent rewrite.
- Latest-metric projections must be rebuildable from this table.

## 3.4 goal_event

purpose:
- Canonical append-oriented goal lifecycle log.

grain:
- One row per goal lifecycle event.

columns:
- goal_event_id: uuid, PK
- person_id: uuid, not null
- goal_id: uuid, not null
- goal_type: text, not null
- event_type: text, not null
- event_at: timestamptz, not null
- target_value_numeric: numeric(18,6), null
- target_unit: text, null
- due_at: timestamptz, null
- status_value: text, null
- source_type: text, not null
- source_ref_type: text, null
- source_ref_id: uuid, null
- idempotency_key: text, null
- note: text, not null default ''
- created_at: timestamptz, not null default now()

constraints:
- PK(goal_event_id)
- CHECK goal_type in ('habit','health_metric','schedule','review','custom')
- CHECK event_type in ('created','updated','paused','resumed','completed','cancelled','deleted')
- CHECK source_type in ('manual','assistant','integration','system')
- UNIQUE(idempotency_key) where idempotency_key is not null

indexes:
- idx_goal_event_person_goal_at on (person_id, goal_id, event_at desc)
- idx_goal_event_goal_type on (goal_type, event_at desc)
- idx_goal_event_source_ref on (source_ref_type, source_ref_id)

ownership_notes:
- Current active goal status is derived from latest effective events.
- This table is not the same as reminders or notifications.

## 3.5 life_event_outbox

purpose:
- Local LifeOS outbox for internal life-domain events to be processed or projected.

grain:
- One row per emitted internal life-domain event.

columns:
- life_event_outbox_id: uuid, PK
- event_type: text, not null
- aggregate_type: text, not null
- aggregate_id: uuid, not null
- event_payload: jsonb, not null
- event_status: text, not null
- available_at: timestamptz, not null default now()
- claimed_at: timestamptz, null
- claimed_by: text, null
- processed_at: timestamptz, null
- retry_count: integer, not null default 0
- last_error_message: text, not null default ''
- idempotency_key: text, null
- created_at: timestamptz, not null default now()

constraints:
- PK(life_event_outbox_id)
- CHECK event_status in ('pending','claimed','processed','failed','dead')
- CHECK retry_count >= 0
- UNIQUE(idempotency_key) where idempotency_key is not null

indexes:
- idx_life_event_outbox_status_available on (event_status, available_at)
- idx_life_event_outbox_aggregate on (aggregate_type, aggregate_id, created_at desc)
- idx_life_event_outbox_claimed on (claimed_by, claimed_at desc)

ownership_notes:
- This outbox is for LifeOS-local events and projections.
- It must not be used as the durable canonical source of the fact itself.
- Facts live in habit_log, health_metric_log, goal_event, and future canonical tables.

## 3.6 event_outbox

purpose:
- Cross-domain or integration-oriented outbox.
- Used when an event may leave LifeOS or be consumed by non-Life processors.

grain:
- One row per exportable or cross-boundary event.

columns:
- event_outbox_id: uuid, PK
- domain_event_ref_id: uuid, null
- event_type: text, not null
- destination_type: text, not null
- destination_key: text, not null
- payload_json: jsonb, not null
- delivery_status: text, not null
- available_at: timestamptz, not null default now()
- first_claimed_at: timestamptz, null
- last_attempt_at: timestamptz, null
- delivered_at: timestamptz, null
- retry_count: integer, not null default 0
- dead_reason: text, not null default ''
- idempotency_key: text, null
- created_at: timestamptz, not null default now()

constraints:
- PK(event_outbox_id)
- CHECK delivery_status in ('pending','claimed','delivered','failed','dead','cancelled')
- CHECK retry_count >= 0
- UNIQUE(idempotency_key) where idempotency_key is not null

indexes:
- idx_event_outbox_status_available on (delivery_status, available_at)
- idx_event_outbox_destination on (destination_type, destination_key, created_at desc)
- idx_event_outbox_domain_ref on (domain_event_ref_id)

destination_examples:
- civilization
- erp
- notification
- analytics

## 3.7 integration_ingest_registry

purpose:
- Registry of external ingestion executions.

grain:
- One row per ingestion execution batch.

columns:
- integration_ingest_registry_id: uuid, PK
- source_system: text, not null
- source_channel: text, not null
- batch_key: text, not null
- ingest_status: text, not null
- received_at: timestamptz, not null
- started_at: timestamptz, null
- finished_at: timestamptz, null
- received_record_count: integer, not null default 0
- accepted_record_count: integer, not null default 0
- rejected_record_count: integer, not null default 0
- note: text, not null default ''
- created_at: timestamptz, not null default now()

constraints:
- PK(integration_ingest_registry_id)
- CHECK ingest_status in ('received','running','completed','failed','partial')
- CHECK received_record_count >= 0
- CHECK accepted_record_count >= 0
- CHECK rejected_record_count >= 0
- UNIQUE(source_system, source_channel, batch_key)

indexes:
- idx_integration_ingest_registry_source on (source_system, source_channel, received_at desc)
- idx_integration_ingest_registry_status on (ingest_status, received_at desc)

## 3.8 integration_ingest_idempotency_key

purpose:
- Protects against duplicate import or integration replay.

grain:
- One row per consumed idempotency key.

columns:
- integration_ingest_idempotency_key_id: uuid, PK
- source_system: text, not null
- source_channel: text, not null
- idempotency_key: text, not null
- first_seen_at: timestamptz, not null default now()
- resolved_target_type: text, null
- resolved_target_id: uuid, null
- created_at: timestamptz, not null default now()

constraints:
- PK(integration_ingest_idempotency_key_id)
- UNIQUE(source_system, source_channel, idempotency_key)

indexes:
- idx_integration_ingest_idempotency_key_lookup on (source_system, source_channel, idempotency_key)

## 3.9 life_record_revision_log

purpose:
- Tracks correction lineage when a previous canonical record is superseded or logically deleted.

grain:
- One row per correction edge.

columns:
- life_record_revision_log_id: uuid, PK
- record_type: text, not null
- old_record_id: uuid, not null
- new_record_id: uuid, null
- revision_action: text, not null
- reason_code: text, not null
- actor_type: text, not null
- actor_id: uuid, null
- revised_at: timestamptz, not null
- note: text, not null default ''
- created_at: timestamptz, not null default now()

constraints:
- PK(life_record_revision_log_id)
- CHECK revision_action in ('superseded','deleted','restored','merged')
- CHECK actor_type in ('user','assistant','admin','system')
- CHECK reason_code in ('manual_correction','duplicate_cleanup','integration_fix','policy_action','system_repair')

indexes:
- idx_life_record_revision_log_old on (record_type, old_record_id)
- idx_life_record_revision_log_new on (record_type, new_record_id)
- idx_life_record_revision_log_revised_at on (revised_at desc)

# ============================================================
# 4. TRIGGER AND FUNCTION DESIGN RULES
# ============================================================

allowed_shared_function:
- fn_touch_updated_at()

functions_to define later, but not in this document as executed SQL:
- fn_claim_life_event_outbox(limit_count integer)
- fn_mark_life_event_processed(event_id uuid)
- fn_mark_life_event_failed(event_id uuid, error_message text)
- fn_claim_event_outbox(limit_count integer)
- fn_mark_event_delivered(event_id uuid)
- fn_mark_event_dead(event_id uuid, dead_reason text)

rules:
- Claim functions must be idempotent under concurrent callers.
- Mark-done functions must validate current status transitions.
- No function may silently delete canonical fact rows.
- Outbox operations must never mutate the fact source rows except through explicit correction flows.

# ============================================================
# 5. DERIVED VIEW POLICY
# ============================================================

derived_view_policy:
- Views are allowed but are not canonical ownership objects.
- Views may be recreated freely from canonical fact tables.
- No business-critical write path may depend on a view as the only truth source.

initial_views_to plan later:
- v_habit_latest_status
- v_health_metric_latest_by_type
- v_active_goal_latest
- v_life_event_outbox_pending
- v_event_outbox_pending
- v_integration_ingest_recent_runs

# ============================================================
# 6. INDEX AND PERFORMANCE POLICY
# ============================================================

performance_policy:
- The first release optimizes for correctness, replayability, and auditability.
- Composite indexes must follow actual access paths from API exact design.
- Partial indexes are allowed for active/unprocessed subsets.
- Heavy JSONB indexing is forbidden in the first release unless a real query requires it.

high_priority_access_paths:
- fetch recent habit history by person and date
- fetch latest metrics by person and metric type
- fetch active goal state by person and goal
- claim pending local outbox items
- claim pending export outbox items
- lookup idempotency key during ingest

# ============================================================
# 7. STATE AND CORRECTION POLICY
# ============================================================

mutation_policy:
- Canonical logs are append-first.
- Corrections create a new fact row and a revision link where needed.
- Soft-delete is represented by is_deleted for fact logs that may need later audit.
- Hard-delete is not part of normal application flow.

correction_examples:
- Wrong habit completion -> add corrected row, optionally mark prior row deleted, insert life_record_revision_log
- Wrong metric reading -> add corrected measurement row, mark prior row deleted if invalid
- Duplicate integration replay -> reject by integration_ingest_idempotency_key without new fact row

# ============================================================
# 8. MIGRATION ORDER
# ============================================================

migration_order:
1. shared schema support
   - schema life
   - fn_touch_updated_at
2. control tables
   - system_control
3. canonical fact tables
   - habit_log
   - health_metric_log
   - goal_event
4. outbox tables
   - life_event_outbox
   - event_outbox
5. integration protection tables
   - integration_ingest_registry
   - integration_ingest_idempotency_key
6. correction lineage
   - life_record_revision_log
7. indexes
8. views
9. helper functions
10. verify cases and acceptance queries

rollback_policy:
- Rollback must be schema-object scoped and reversible by migration records.
- Shared support tables should not be repeatedly dropped once canonical migration begins.
- Trial-only schemas may be dropped; canonical migrations must prefer additive reversals.

# ============================================================
# 9. ACCEPTANCE GATE
# ============================================================

acceptance_conditions:
- All listed tables exist in schema life.
- Primary keys, unique constraints, and critical checks exist.
- updated_at trigger exists only on mutable tables that need it.
- Outbox claim path has no duplicate claims under concurrency testing.
- Idempotency key uniqueness blocks replay.
- Latest-state views can be rebuilt from canonical logs.
- No table depends on a civilization-side view for write correctness.
- No ERP delivery path is required for local LifeOS canonical validity.

minimum_verify_cases:
- table existence
- PK existence
- idempotency uniqueness
- outbox pending query returns stable order
- correction lineage can link old and new record ids
- logical delete preserves history
- integration batch uniqueness holds
- recent-history queries use indexed paths

# ============================================================
# 10. WHAT THIS ENABLES NEXT
# ============================================================

next_exact_designs_enabled:
- API request/response exact payload design for LifeOS write paths
- Migration runner exact SQL layout
- Verify runner exact case catalog
- Projection view exact design
- Termux one-block SQL generation later, after design freeze approval

final_position:
- This document defines the first canonical LifeOS core DB ownership model.
- It is suitable for DDL generation later.
- It does not authorize SQL execution yet.
