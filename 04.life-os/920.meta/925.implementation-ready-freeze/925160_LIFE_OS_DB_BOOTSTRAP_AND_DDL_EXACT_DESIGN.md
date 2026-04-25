# ============================================================
# LIFE OS DB BOOTSTRAP AND DDL EXACT DESIGN
# ============================================================

status: canonical
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
document_id: 925160
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Freeze the bootstrap-ready database preparation design for LifeOS.
- Convert schema-cluster design into an explicit DDL preparation map.
- Define what must exist before versioned migration begins.

database_connection_rule:
- bootstrap and ddl preparation for LifeOS must use PERSONA_DATABASE_URL
- DATABASE_URL is reserved for ERP-side work only
- bootstrap runner must never mutate ERP-side schemas

# ============================================================
# 1. BOOTSTRAP PHILOSOPHY
# ============================================================

bootstrap_goal:
- create the safe floor needed for deterministic migration and verification
- prepare schemas, registry tables, baseline functions, and baseline policies
- avoid mixing one-time bootstrap with long-term migration history

bootstrap_non_goal:
- full business data import
- recommendation backfill
- analytics backfill
- projection warmup beyond explicit smoke-level seed
- operator convenience hacks

hard_rule:
- bootstrap must be minimal, repeatable, and auditable

# ============================================================
# 2. REQUIRED PRE-MIGRATION OBJECTS
# ============================================================

required_objects:
- life schema namespace or approved equivalent namespace strategy
- migration registry tables
- runner execution audit table
- common timestamp/update trigger helpers if approved
- outbox helper structure
- audit helper structure
- minimal enum or check-constraint scaffolding if approved
- baseline policy version row
- baseline privacy scope seed rows
- baseline language/timezone/currency defaults only when approved

bootstrap_tables_minimum:
- life_schema_migration_registry
- life_schema_migration_lock
- life_runner_execution_audit
- life_policy_version
- life_privacy_scope_rule

# ============================================================
# 3. DDL PREPARATION MAP BY CLUSTER
# ============================================================

life_core_ddl_preparation:
- identity and preference tables
- household membership boundary support
- privacy scope rule support
- language/timezone/currency settings
- required common columns pattern

life_record_ddl_preparation:
- fact tables for health, meals, sleep, activity, tasks, goals, finance, stock, journal
- device raw and normalized measurements
- source_type and source_ref required
- soft-delete and version columns required

life_signal_ddl_preparation:
- derived signals separate from raw facts
- derived rows must reference source trace or summary trace
- no overwrite of raw facts allowed

life_review_ddl_preparation:
- check-in and review support tables
- summary render and trace tables
- snapshot tables rebuildable from source facts when declared

life_ops_ddl_preparation:
- alerting
- delivery state
- retry queue
- dead letter
- correction request
- audit log

life_integration_ddl_preparation:
- persona projection outbox
- sync event inbox
- external import batch/job/source account

life_admin_ddl_preparation:
- policy versions
- admin action logs
- support case links
- export request support

# ============================================================
# 4. COMMON COLUMN STANDARD
# ============================================================

required_common_columns:
- id
- user_id
- household_scope_code
- source_type
- source_ref
- created_at
- updated_at
- deleted_at nullable
- record_version
- correlation_id nullable
- trace_ref nullable

column_rules:
- created_at and updated_at required on all mutable tables
- deleted_at nullable only where soft-delete is allowed
- record_version required for optimistic concurrency on mutable rows
- source_type and source_ref required on rows derived from imports, devices, or sync events
- household_scope_code required when household visibility may vary

# ============================================================
# 5. INDEX, CONSTRAINT, AND POLICY PREP
# ============================================================

index_preparation_rules:
- primary key on id
- user_id leading indexes on user-owned tables
- created_at indexes on timeline-heavy tables
- correlation_id index when cross-run tracing is required
- unique migration_id on migration registry
- unique lock_key on migration lock table

constraint_rules:
- foreign keys only after parent table exists
- privacy scope values constrained to approved codes
- derived signal tables must reference source lineage where available
- duplicate-safe uniqueness for outbox/inbox event ids

policy_preparation_rules:
- no table may become publicly readable by default
- masked/unmasked projection rule must be enforceable above repository layer
- policy version seed must exist before acceptance verification
- support/admin tables must be operator-only

# ============================================================
# 6. BOOTSTRAP SEED POLICY
# ============================================================

allowed_seed_categories:
- policy baseline
- privacy scope codes
- runner registry initialization
- minimal admin support baseline rows
- smoke-test seed rows in isolated non-production verification mode only

forbidden_seed_categories:
- production user life records
- recommendation result rows
- analytics aggregate rows as source of truth
- household-shared content without approval

seed_idempotency_rules:
- upsert only on approved unique keys
- seed rerun must not duplicate baseline rows
- seed must log actor and timestamp

# ============================================================
# 7. DDL BUNDLE STRUCTURE
# ============================================================

recommended_bundle_structure:
- 000_bootstrap_schema_and_registry.sql
- 005_bootstrap_policy_baseline.sql
- 010_core_identity_preference.sql
- 020_record_health_meal_sleep_activity.sql
- 030_record_tasks_goals_stock_finance_journal.sql
- 040_signal_and_intervention_candidate.sql
- 050_review_snapshot_summary.sql
- 060_ops_alert_retry_dlq_correction.sql
- 070_integration_inbox_outbox_import.sql
- 080_admin_policy_export_support.sql
- 090_verify_schema_contract_queries.sql

ddl_bundle_notes:
- bootstrap files create floor objects only
- migration files remain versioned and separately auditable
- verify queries may live in a separate verification bundle

# ============================================================
# 8. BOOTSTRAP RUNNER EXECUTION ORDER
# ============================================================

execution_order:
1. verify PERSONA_DATABASE_URL
2. verify target database role and schema target
3. create schema namespace and registry tables
4. create common helper functions/triggers if approved
5. create baseline policy and privacy rows
6. create any explicitly approved foundation structures
7. hand off to migration runner

stop_conditions:
- schema create failure
- registry create failure
- policy baseline seed failure
- helper function mismatch
- unexpected preexisting object shape conflict

# ============================================================
# 9. DB BUILD PREPARATION CHECKLIST
# ============================================================

before_sql_generation:
- freeze exact schema namespace
- freeze approved table list
- freeze migration order
- freeze registry shape
- freeze baseline policy rows
- freeze acceptance queries

before_first_execution:
- confirm PERSONA_DATABASE_URL
- confirm target DB is Persona-side
- confirm no live destructive change in bundle
- confirm rollback notes attached
- confirm verification queries present

after_bootstrap_before_runtime:
- migration registry readable
- policy baseline readable
- required schemas visible
- no missing foundation object
- runner audit row written

# ============================================================
# 10. ACCEPTANCE GATE FOR THIS DOCUMENT
# ============================================================

this_document_is_complete_when:
- bootstrap floor is explicit
- DDL preparation map covers every schema cluster
- seed policy is explicit
- later SQL one-block generation can proceed without guessing

final_position:
- LifeOS DB build preparation is now fixed at design level.
- Actual SQL generation is the next phase after review.
