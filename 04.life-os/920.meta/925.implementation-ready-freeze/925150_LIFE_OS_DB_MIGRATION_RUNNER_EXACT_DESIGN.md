# ============================================================
# LIFE OS DB MIGRATION RUNNER EXACT DESIGN
# ============================================================

status: canonical
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
document_id: 925150
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Freeze the exact migration runner contract for LifeOS schema evolution.
- Convert the already-fixed schema clusters and migration order into
  an execution-ready migration policy.
- Ensure all Persona-side migration work uses PERSONA_DATABASE_URL.

database_connection_rule:
- migration runner must connect with PERSONA_DATABASE_URL
- migration runner must never silently switch to DATABASE_URL
- any ERP bridge migration is out of scope for this runner

# ============================================================
# 1. MIGRATION RUNNER MISSION
# ============================================================

mission:
- apply approved additive migrations for LifeOS
- preserve source-of-truth tables and auditability
- support deterministic rollback notes
- stop before application/runtime steps if migration integrity fails

explicit_non_scope:
- destructive migration in initial rollout path
- arbitrary patching in production without approved migration file
- data repair scripts hidden inside migration steps
- seed logic that belongs to bootstrap runner

# ============================================================
# 2. SCHEMA CLUSTER COVERAGE
# ============================================================

schema_clusters:
- life_core
- life_record
- life_signal
- life_review
- life_ops
- life_integration
- life_admin

cluster_to_example_tables:
life_core:
- life_profile
- life_identity
- life_preference
- life_timezone_setting
- life_language_setting
- life_currency_setting
- life_household_membership
- life_privacy_scope_rule

life_record:
- life_schedule_record
- life_routine_record
- life_task_record
- life_goal_record
- life_health_record
- life_meal_record
- life_hydration_record
- life_sleep_record
- life_activity_record
- life_home_task_record
- life_home_stock_record
- life_expense_record
- life_memory_record
- life_journal_record
- life_device_measurement_raw
- life_device_measurement_normalized

life_signal:
- life_health_signal
- life_nutrition_signal
- life_sleep_signal
- life_activity_signal
- life_finance_signal
- life_pattern_signal
- life_risk_signal
- life_intervention_candidate

life_review:
- life_daily_checkin
- life_daily_status_snapshot
- life_weekly_review
- life_summary_render
- life_summary_trace_ref

life_ops:
- life_alert
- life_alert_delivery
- life_followup_task
- life_notification_policy_eval
- life_retry_queue
- life_dead_letter
- life_correction_request
- life_audit_log

life_integration:
- life_persona_projection_outbox
- life_sync_event_inbox
- life_external_import_job
- life_external_import_batch
- life_external_source_account

life_admin:
- life_policy_version
- life_admin_action_log
- life_support_case_link
- life_data_export_request

# ============================================================
# 3. MIGRATION ORDER
# ============================================================

frozen_migration_order:
01_shared_foundations:
- shared audit/outbox tables
- migration registry
- schema version registry

02_life_core:
- life_core tables
- privacy and household boundary rules

03_domain_fact_tables:
- health
- meals
- hydration
- sleep
- activity
- finance_lite
- home_stock
- journal
- memory
- device raw and normalized facts

04_derived_summary_tables:
- daily snapshot
- weekly review support
- summary render trace refs

05_recommendation_and_signal_tables:
- recommendation candidate and signal families
- intervention candidate tracking

06_alert_and_ops_tables:
- alerts
- deliveries
- retry queue
- dead letter
- correction requests
- audit extensions

07_analytics_and_integration_tables:
- analytics support structures
- integration inbox/outbox
- external source account and import job tables

08_admin_support_tables:
- policy versions
- admin action logs
- support case link
- export request support

migration_rules:
- additive first
- separate backfill from schema creation
- every migration file must declare purpose, dependency, and rollback note
- tables with sensitive facts must include ownership and access-control note
- projections must not be created before their source tables

# ============================================================
# 4. MIGRATION FILE CONTRACT
# ============================================================

required_file_metadata:
- migration_id
- migration_name
- target_cluster
- dependency_list
- applies_to_environment
- rollback_note
- author_code
- approved_by
- created_at

file_naming_rule:
- sortable numeric prefix
- cluster code included
- human-readable migration name included

recommended_structure:
- 001_foundation_shared_audit_and_outbox.sql
- 010_life_core_profile_and_preferences.sql
- 020_life_record_health_and_meal.sql
- 021_life_record_sleep_and_activity.sql
- 030_life_signal_basic_signals.sql
- 040_life_review_daily_and_weekly.sql
- 050_life_ops_alert_retry_dlq.sql
- 060_life_integration_inbox_outbox.sql
- 070_life_admin_policy_and_export.sql

# ============================================================
# 5. EXECUTION ALGORITHM
# ============================================================

step_01_precheck:
- ensure PERSONA_DATABASE_URL is set
- ensure required migration directory exists
- ensure migration registry is reachable
- ensure no duplicate migration ids in bundle

step_02_plan:
- list unapplied migrations
- topologically sort by dependency
- fail if dependency gap exists

step_03_apply:
- execute one migration at a time
- record start and finish
- fail closed on first SQL error
- do not continue after partial failure

step_04_post_apply_registration:
- register checksum
- register execution actor
- register applied timestamp
- attach rollback note snapshot

step_05_handoff:
- call bootstrap runner only if seed/bootstrap phase still pending and allowed
- otherwise pass control to verification runner

# ============================================================
# 6. REGISTRY TABLE REQUIREMENTS
# ============================================================

required_registry_tables:
- life_schema_migration_registry
- life_schema_migration_lock
- life_runner_execution_audit

life_schema_migration_registry_columns:
- migration_id
- migration_name
- checksum
- target_cluster
- applied_at
- applied_by
- correlation_id
- result_status
- rollback_note

life_schema_migration_lock_columns:
- lock_key
- locked_by
- locked_at
- expires_at

life_runner_execution_audit_columns:
- runner_name
- execution_id
- started_at
- finished_at
- result_status
- summary_ref
- failure_reason nullable

# ============================================================
# 7. LOCKING AND CONCURRENCY
# ============================================================

concurrency_rules:
- only one LifeOS migration runner may hold the migration lock
- verification runner may read concurrently after migration completes
- bootstrap runner may not race with migration runner on same schema scope

lock_policy:
- acquire lock before first migration
- refresh lock for long-running bundles
- release lock only after registry write
- on abnormal termination, require operator review before forced unlock

# ============================================================
# 8. FAILURE POLICY
# ============================================================

hard_fail_conditions:
- PERSONA_DATABASE_URL missing
- migration checksum mismatch against approved bundle
- dependency graph broken
- attempted destructive statement in initial rollout bundle
- registry write failure
- lock acquisition failure

failure_outputs:
- failed migration id
- exact sql file path
- exact database error excerpt
- rollback note reminder
- stop recommendation

prohibited_auto_recovery:
- automatic reordering after failure
- automatic destructive cleanup
- implicit retry without operator approval

# ============================================================
# 9. HANDOFF TO DDL / BOOTSTRAP PREP
# ============================================================

handoff_dependencies:
- bootstrap runner may create approved schemas, enums, registry scaffolding,
  baseline policy rows, and low-risk seed rows
- migration runner applies versioned schema changes after bootstrap floor exists
- verify runner validates actual table shape and acceptance behavior after both complete

# ============================================================
# 10. ACCEPTANCE GATE FOR THIS DOCUMENT
# ============================================================

this_document_is_complete_when:
- schema cluster coverage is fixed
- migration order is fixed
- registry and lock expectations are fixed
- later Termux migration block can be generated without adding new policy

final_position:
- LifeOS migration execution policy is fixed and Persona-side DB safe.
