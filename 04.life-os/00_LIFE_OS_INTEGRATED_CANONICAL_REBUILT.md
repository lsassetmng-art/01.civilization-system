# ============================================================
# LIFE OS INTEGRATED CANONICAL REBUILT
# ============================================================

status: canonical-rebuilt
system: life-os
owner: Boss
prepared_by: Zero

purpose:
- Rebuild the LifeOS integrated canonical document from the canonical
  920.meta implementation-ready freeze bundle.
- Preserve exact source files as embedded sections for review,
  traceability, and future per-file canonical normalization.

source_bundle:
- 920.meta/920_INDEX.md
- 920.meta/920_OVERVIEW.md
- 920.meta/925.implementation-ready-freeze/925_INDEX.md
- 920.meta/925.implementation-ready-freeze/925_OVERVIEW.md
- 920.meta/925.implementation-ready-freeze/925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md
- 920.meta/925.implementation-ready-freeze/925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md
- 920.meta/925.implementation-ready-freeze/925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md
- 920.meta/925.implementation-ready-freeze/925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md
- 920.meta/925.implementation-ready-freeze/925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md

integration_note:
- Folder structure has been normalized to the canonical 920.meta layer.
- Legacy 900.meta content has been removed from the live root tree and
  preserved only in the migration backup area.

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/920_INDEX.md -->
# ============================================================
# LIFE OS META INDEX
# ============================================================

status: canonical
layer: 920.meta
system: life-os
owner: Boss
prepared_by: Zero

# FILES
920_OVERVIEW.md
921_LIFE_OS_CHANGELOG.md
922_LIFE_OS_DEPENDENCY_MAP.md
923_LIFE_OS_DOCUMENT_MAP.md
924_LIFE_OS_LAYER_MAP.md

- 925.implementation-ready-freeze/925_INDEX.md
- 925.implementation-ready-freeze/925_OVERVIEW.md
- 925.implementation-ready-freeze/925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md
- 925.implementation-ready-freeze/925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md
- 925.implementation-ready-freeze/925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md
- 925.implementation-ready-freeze/925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md
- 925.implementation-ready-freeze/925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md
- 925.implementation-ready-freeze/925_INDEX.md
- 925.implementation-ready-freeze/925_OVERVIEW.md
- 925.implementation-ready-freeze/925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md
- 925.implementation-ready-freeze/925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md
- 925.implementation-ready-freeze/925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md
- 925.implementation-ready-freeze/925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md
- 925.implementation-ready-freeze/925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/920_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/920_OVERVIEW.md -->
# ============================================================
# LIFE OS META OVERVIEW
# ============================================================

status: canonical
layer: 920.meta
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define meta documents used to maintain Life OS documentation integrity.

scope:
- changelog
- dependency map
- document map
- layer map
- archive references

implementation_ready_freeze:
- 925.implementation-ready-freeze

subfolders:
- 925.implementation-ready-freeze
- archive.migration-backup

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/920_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925_INDEX.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY FREEZE INDEX
# ============================================================

status: canonical
layer: 920.meta
subfolder: 925.implementation-ready-freeze
system: life-os
owner: Boss
prepared_by: Zero

files:
- 925_OVERVIEW.md
- 925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md
- 925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md
- 925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md
- 925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md
- 925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925_OVERVIEW.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY FREEZE OVERVIEW
# ============================================================

status: canonical
layer: 920.meta
subfolder: 925.implementation-ready-freeze
system: life-os
owner: Boss
prepared_by: Zero

purpose:
- Stores the four-pass implementation-ready parent design freeze for LifeOS.
- Places the implementation-ready bundle under the canonical meta layer.
- Serves as the canonical folder entry point before later integrated rebuild refresh.

included_documents:
- 925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md
- 925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md
- 925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md
- 925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md
- 925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY MASTER DESIGN
# ============================================================

status: master-design
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-16
purpose:
Transform the current LifeOS integrated canonical set into an implementation-ready design baseline.

# ============================================================
# 0. POSITION
# ============================================================

LifeOS already has broad structural coverage.
However, a large part of the document set is still draft or canonical-draft,
which means structural coverage exists but exact implementation contracts are not yet fully fixed.

Observed current shape from the integrated canonical rebuilt file:
- total integrated files: 647
- canonical: 193
- canonical-draft: 354
- draft: 99
- canonical-handoff: 1
- non-final files (draft + canonical-draft): 453

This means LifeOS is not in skeleton-only state,
but it is also not yet implementation-ready as a whole.

# ============================================================
# 1. IMPLEMENTATION-READY DEFINITION
# ============================================================

For this project, a LifeOS design is treated as implementation-ready only when all of the following are fixed.

1. Domain boundary is fixed.
2. Source of truth entity ownership is fixed.
3. State machine is fixed.
4. API request and response payloads are fixed.
5. Event contracts are fixed.
6. Database table groups and key columns are fixed.
7. Screen list and stateflow are fixed.
8. Validation and error semantics are fixed.
9. Retry, idempotency, and audit rules are fixed.
10. Build order and test acceptance points are fixed.

Anything below that line is still design-expansion or conceptual design,
not implementation-ready design.

# ============================================================
# 2. HONEST POSITION ON "ONE-SHOT"
# ============================================================

Turning every remaining draft-level file into fully final exact design in one response is not realistic,
because the current integrated set contains 453 non-final files across architecture, model,
flow, interface, operations, security, infrastructure, implementation, and development.

What can be done now is:
- fix the master implementation-ready baseline in one shot,
- define the exact completion standard for every layer,
- freeze the core contracts that all remaining files must inherit,
- bundle the remaining refinement into a small number of large passes.

That is the correct path to "as few rounds as possible".

# ============================================================
# 3. TARGET COMPLETION STRATEGY
# ============================================================

LifeOS should be completed in 4 large bundled passes.

pass_1_now:
- freeze implementation-ready baseline
- freeze module map
- freeze schema clusters
- freeze API groups
- freeze event contracts
- freeze state machines
- freeze screen/stateflow baseline
- freeze test and rollout gate

pass_2_domain_data_and_flow:
- 210 life-core
- 211 health-condition
- 212 meal-nutrition
- 213 sleep-recovery
- 214 activity-exercise
- 215 home-and-living
- 216 personal-finance-lite
- 222 external-device-and-sensor
- 223 family-household-boundary

pass_3_review_intelligence_and_ops:
- 217 memory-life-log
- 218 assistant-orchestration
- 219 daily-checkin-and-review
- 220 risk-and-alert
- 221 life-analytics
- 060 integration
- 070 operations
- 080 policy
- 100 security
- 110 infrastructure

pass_4_finalization:
- 090 interface exactness normalization
- 120 implementation folder completion
- 130 development acceptance completion
- status normalization from draft/canonical-draft to canonical
- integrated rebuilt regeneration

# ============================================================
# 4. LAYER COMPLETION STANDARD
# ============================================================

## 4.1 architecture
Each architecture file must end with these fixed sections:
- actors
- owned inputs
- produced outputs
- invariants
- state transitions
- failure boundaries
- integration touchpoints
- non-goals

## 4.2 model
Each model file must end with these fixed sections:
- entity_name
- purpose
- owner_scope
- primary_key
- foreign_keys
- required_fields
- optional_fields
- retention_policy
- correction_policy
- derived_fields
- index_recommendations
- privacy_class

## 4.3 runtime
Each runtime file must end with these fixed sections:
- runtime_units
- triggers
- queues
- schedulers
- timeout rules
- retry rules
- observability signals

## 4.4 flow
Each flow file must end with these fixed sections:
- entry condition
- step sequence
- user-visible checkpoints
- failure branches
- retry and dead-letter handling
- audit writes
- completion condition

## 4.5 operations
Each operations file must end with these fixed sections:
- operational owner
- allowed actions
- forbidden actions
- incident playbook hooks
- manual recovery path
- support visibility rule

## 4.6 policy
Each policy file must end with these fixed sections:
- policy statement
- permitted action
- blocked action
- escalation threshold
- audit requirement
- exception process

## 4.7 interface
Each interface file must end with these fixed sections:
- endpoint or command name
- caller
- authority basis
- request json schema
- response json schema
- error code list
- idempotency rule
- versioning rule

## 4.8 implementation
Each implementation file must end with these fixed sections:
- module path
- repository path
- table or store mapping
- dto mapping
- domain service mapping
- job mapping
- test target list

## 4.9 development
Each development file must end with these fixed sections:
- build order
- migration order
- seed strategy
- mock strategy
- integration test list
- regression focus
- release gate

# ============================================================
# 5. LIFE OS FIXED MODULE MAP
# ============================================================

The following module map becomes the implementation-ready baseline.

root_modules:
- app-shell
- shared-kernel
- auth-and-session
- life-core
- life-records
- device-ingestion
- derived-signal-engine
- review-and-summary
- reminder-and-followup
- alert-and-escalation
- analytics-and-pattern
- household-boundary
- persona-bridge
- audit-and-governance
- admin-ops

android_package_shape:
- com.lsam.lifeos.app
- com.lsam.lifeos.core
- com.lsam.lifeos.core.time
- com.lsam.lifeos.core.money
- com.lsam.lifeos.core.language
- com.lsam.lifeos.data.local
- com.lsam.lifeos.data.remote
- com.lsam.lifeos.domain.lifecore
- com.lsam.lifeos.domain.health
- com.lsam.lifeos.domain.meal
- com.lsam.lifeos.domain.sleep
- com.lsam.lifeos.domain.activity
- com.lsam.lifeos.domain.home
- com.lsam.lifeos.domain.finance
- com.lsam.lifeos.domain.memory
- com.lsam.lifeos.domain.review
- com.lsam.lifeos.domain.assistant
- com.lsam.lifeos.domain.alert
- com.lsam.lifeos.domain.analytics
- com.lsam.lifeos.domain.device
- com.lsam.lifeos.domain.household
- com.lsam.lifeos.domain.personabridge
- com.lsam.lifeos.domain.audit
- com.lsam.lifeos.feature.dashboard
- com.lsam.lifeos.feature.checkin
- com.lsam.lifeos.feature.records
- com.lsam.lifeos.feature.reviews
- com.lsam.lifeos.feature.settings
- com.lsam.lifeos.feature.admin

module_rules:
- feature modules may not bypass domain modules
- domain modules may not depend on feature UI modules
- derived-signal-engine may read facts but must not overwrite raw facts
- review-and-summary may consume signals and facts but must expose trace references
- alert-and-escalation may emit alerts but must not create diagnosis-like conclusions
- persona-bridge must only expose contract-approved projections

# ============================================================
# 6. FIXED DATA OWNERSHIP AND SCHEMA CLUSTERS
# ============================================================

LifeOS data must be split into four ownership classes.

ownership_classes:
- raw_fact
- normalized_fact
- derived_signal
- user_facing_summary

hard_rule:
raw_fact must never be overwritten by derived_signal or summary generation.

schema_clusters:
- life_core
- life_record
- life_signal
- life_review
- life_ops
- life_integration
- life_admin

## 6.1 life_core tables
- life_profile
- life_identity
- life_preference
- life_timezone_setting
- life_language_setting
- life_currency_setting
- life_household_membership
- life_privacy_scope_rule

## 6.2 life_record tables
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

## 6.3 life_signal tables
- life_health_signal
- life_nutrition_signal
- life_sleep_signal
- life_activity_signal
- life_finance_signal
- life_pattern_signal
- life_risk_signal
- life_intervention_candidate

## 6.4 life_review tables
- life_daily_checkin
- life_daily_status_snapshot
- life_weekly_review
- life_summary_render
- life_summary_trace_ref

## 6.5 life_ops tables
- life_alert
- life_alert_delivery
- life_followup_task
- life_notification_policy_eval
- life_retry_queue
- life_dead_letter
- life_correction_request
- life_audit_log

## 6.6 life_integration tables
- life_persona_projection_outbox
- life_sync_event_inbox
- life_external_import_job
- life_external_import_batch
- life_external_source_account

## 6.7 life_admin tables
- life_policy_version
- life_admin_action_log
- life_support_case_link
- life_data_export_request

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

required_integrity_rules:
- every mutable business row has record_version
- every external sync write has correlation_id
- every summary row has trace_ref
- every alert row has signal_ref or policy_eval_ref
- every correction request references source row and authority basis

# ============================================================
# 7. FIXED API GROUPS
# ============================================================

This section freezes the command surface.
Payloads are intentionally exact enough to implement against.

## 7.1 user app API group

### POST /life/checkins/daily
request:
```json
{
  "user_id": "uuid",
  "checkin_date": "YYYY-MM-DD",
  "energy_level": 1,
  "mood_level": 1,
  "sleep_quality_level": 1,
  "stress_level": 1,
  "free_note": "string|null",
  "language_code": "ja-JP",
  "client_timestamp": "ISO8601",
  "idempotency_key": "string"
}
```
response:
```json
{
  "checkin_id": "uuid",
  "snapshot_job_enqueued": true,
  "status": "accepted",
  "trace_ref": "string"
}
```

### POST /life/records/health
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "symptom_code": "string|null",
  "condition_note": "string|null",
  "severity_level": 1,
  "temperature_celsius": 36.5,
  "medication_note": "string|null",
  "source_type": "manual",
  "idempotency_key": "string"
}
```
response:
```json
{
  "health_record_id": "uuid",
  "signal_recompute_enqueued": true,
  "status": "accepted",
  "trace_ref": "string"
}
```

### POST /life/records/meal
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "meal_type": "breakfast|lunch|dinner|snack",
  "items": [
    {
      "item_name": "string",
      "quantity_text": "string|null"
    }
  ],
  "hydration_ml": 0,
  "free_note": "string|null",
  "source_type": "manual",
  "idempotency_key": "string"
}
```
response:
```json
{
  "meal_record_id": "uuid",
  "nutrition_signal_enqueued": true,
  "status": "accepted",
  "trace_ref": "string"
}
```

### POST /life/records/sleep
request:
```json
{
  "user_id": "uuid",
  "sleep_start_at": "ISO8601",
  "sleep_end_at": "ISO8601",
  "quality_level": 1,
  "wake_count": 0,
  "source_type": "manual|device",
  "source_ref": "string|null",
  "idempotency_key": "string"
}
```
response:
```json
{
  "sleep_record_id": "uuid",
  "recovery_signal_enqueued": true,
  "status": "accepted",
  "trace_ref": "string"
}
```

### POST /life/records/activity
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "activity_type": "walk|run|workout|stretch|other",
  "duration_minutes": 0,
  "distance_meters": 0,
  "intensity_level": 1,
  "source_type": "manual|device",
  "source_ref": "string|null",
  "idempotency_key": "string"
}
```
response:
```json
{
  "activity_record_id": "uuid",
  "activity_signal_enqueued": true,
  "status": "accepted",
  "trace_ref": "string"
}
```

### POST /life/records/expense
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "category_code": "food|home|transport|health|other",
  "amount": 1200.0,
  "currency_code": "JPY",
  "display_currency_code": "JPY",
  "merchant_name": "string|null",
  "memo": "string|null",
  "idempotency_key": "string"
}
```
response:
```json
{
  "expense_record_id": "uuid",
  "budget_eval_enqueued": true,
  "status": "accepted",
  "trace_ref": "string"
}
```

### GET /life/dashboard
response:
```json
{
  "user_id": "uuid",
  "today": "YYYY-MM-DD",
  "health_summary": {
    "status_code": "stable|watch|attention",
    "trace_ref": "string"
  },
  "routine_summary": {
    "completion_ratio": 0.0,
    "trace_ref": "string"
  },
  "budget_summary": {
    "month_total": 0.0,
    "currency_code": "JPY",
    "trace_ref": "string"
  },
  "alerts": [
    {
      "alert_id": "uuid",
      "severity": "low|medium|high",
      "title": "string",
      "trace_ref": "string"
    }
  ],
  "next_actions": [
    {
      "action_id": "uuid",
      "action_type": "checkin|followup|home_task|review",
      "title": "string",
      "due_at": "ISO8601|null"
    }
  ]
}
```

## 7.2 device ingestion API group

### POST /life/device-import/batches
request:
```json
{
  "user_id": "uuid",
  "source_account_id": "uuid",
  "source_batch_ref": "string",
  "measurements": [
    {
      "measured_at": "ISO8601",
      "metric_code": "steps|heart_rate|weight|sleep_duration",
      "value_number": 0.0,
      "unit_code": "count|bpm|kg|min"
    }
  ],
  "idempotency_key": "string"
}
```
response:
```json
{
  "import_batch_id": "uuid",
  "raw_write_count": 0,
  "normalize_job_enqueued": true,
  "status": "accepted"
}
```

## 7.3 correction API group

### POST /life/corrections
request:
```json
{
  "user_id": "uuid",
  "target_table": "string",
  "target_id": "uuid",
  "reason_code": "wrong_time|wrong_value|duplicate|privacy_scope_fix|other",
  "requested_patch": {
    "field": "value"
  },
  "authority_basis": "self",
  "idempotency_key": "string"
}
```
response:
```json
{
  "correction_request_id": "uuid",
  "status": "accepted",
  "trace_ref": "string"
}
```

## 7.4 admin ops API group

### GET /life/admin/import-jobs/{job_id}
response:
```json
{
  "job_id": "uuid",
  "job_type": "normalize|signal_recompute|summary_render|delivery",
  "status": "queued|running|succeeded|failed|dead_letter",
  "attempt_count": 0,
  "last_error_code": "string|null",
  "correlation_id": "string|null"
}
```

fixed_error_codes:
- LIFE-VALIDATION-001 invalid input
- LIFE-AUTH-001 authority missing
- LIFE-SCOPE-001 privacy scope invalid
- LIFE-SYNC-001 duplicate external batch
- LIFE-SYNC-002 normalization failed
- LIFE-SIGNAL-001 signal generation failed
- LIFE-RENDER-001 summary render failed
- LIFE-OPS-001 dead letter reached

idempotency_rule:
All POST endpoints above require idempotency_key and must return the original accepted response for replay within the retention window.

versioning_rule:
- external endpoint namespace starts at v1
- additive fields are allowed
- destructive field rename is not allowed
- new semantics require new field or new endpoint version

# ============================================================
# 8. FIXED EVENT CONTRACTS
# ============================================================

LifeOS must standardize events before per-domain refinement.

core_events:
- life.record.created
- life.record.corrected
- life.signal.generated
- life.alert.raised
- life.alert.delivery_requested
- life.review.daily_generated
- life.review.weekly_generated
- life.device.batch_imported
- life.device.normalized
- life.persona.projection_requested
- life.persona.projection_published

standard_event_envelope:
```json
{
  "event_id": "uuid",
  "event_type": "life.record.created",
  "event_version": 1,
  "occurred_at": "ISO8601",
  "user_id": "uuid",
  "correlation_id": "string|null",
  "producer": "life-os",
  "payload": {},
  "trace_ref": "string|null"
}
```

minimum_payload_rules:
- record events carry table name and primary id
- signal events carry source refs and signal severity
- alert events carry alert id and severity
- review events carry review id and summary trace ref
- persona projection events carry consent basis and projection contract code

# ============================================================
# 9. FIXED STATE MACHINES
# ============================================================

## 9.1 generic record state
- accepted
- normalized
- evaluated
- summarized
- corrected
- archived

## 9.2 import job state
- queued
- running
- partial_success
- failed_retryable
- dead_letter
- succeeded

## 9.3 alert state
- detected
- review_pending
- approved_for_delivery
- delivered
- acknowledged
- muted
- closed

## 9.4 review state
- scheduled
- gathering_inputs
- rendering
- ready
- delivered
- corrected

## 9.5 correction state
- requested
- under_validation
- applied
- rejected
- superseded

state_rules:
- raw records may transition to corrected but original rows remain traceable
- alerts may not jump directly from detected to closed without audit evidence
- dead_letter is terminal until explicit operator replay
- review render cannot become ready without traceable input set

# ============================================================
# 10. FIXED SCREEN MAP
# ============================================================

The following screens are treated as mandatory implementation screens.

mandatory_user_screens:
- dashboard
- daily check-in
- health input
- meal input
- sleep input
- activity input
- expense input
- home task list
- home stock list
- journal
- weekly review
- alert center
- device sync status
- language settings
- currency settings
- privacy scope settings

mandatory_admin_screens:
- import job inspector
- dead-letter inspector
- alert delivery monitor
- policy version viewer
- correction queue viewer

screen_stateflow_rules:
- every input screen must support draft, validate, submit, accepted, error
- every review screen must support loading, ready, trace-open, correction-request
- every admin screen must support filter, inspect, replay-if-allowed, audit-link

# ============================================================
# 11. VALIDATION AND PRIVACY RULES
# ============================================================

hard_validation_rules:
- user_id is mandatory on all owned writes
- occurred_at and client_timestamp cannot both be missing for record input
- device measurement without source_account_id is rejected
- correction patch cannot mutate immutable ownership columns
- display currency cannot replace original currency fact
- summary text without trace_ref is invalid

privacy_rules:
- health and finance are private by default
- shared household exposure must use explicit scope flag
- operator views must default to masked values where full content is unnecessary
- persona projection requires contract code and consent basis
- summary generation may use sensitive facts but may only expose bounded wording

# ============================================================
# 12. TEST ACCEPTANCE GATE
# ============================================================

Implementation is not considered ready to start unless these acceptance suites are declared.

suite_a_record_integrity:
- create each major record type
- replay same idempotency key
- verify single committed business row
- verify audit row exists

suite_b_signal_traceability:
- create source records
- generate signals
- verify source refs remain navigable
- verify no raw fact overwrite

suite_c_review_traceability:
- generate daily summary
- open trace ref
- verify source inputs listed
- correct one source record
- verify summary correction path

suite_d_privacy_boundary:
- confirm health and finance default private
- verify masked operator view
- verify explicit household share only when flagged

suite_e_import_reliability:
- import valid device batch
- import duplicate batch
- import malformed batch
- verify retry and dead-letter behavior

suite_f_alert_safety:
- verify alert generation without diagnosis wording
- verify silence window filtering
- verify escalation trace

# ============================================================
# 13. BUILD ORDER
# ============================================================

recommended_build_order:
1. life_core tables and settings
2. record input APIs
3. raw fact persistence
4. normalization and signal jobs
5. dashboard query model
6. daily check-in and daily snapshot
7. weekly review and trace views
8. alerting and follow-up
9. device import and replay tools
10. persona projection bridge
11. admin support tools
12. analytics refinement

# ============================================================
# 14. WHAT THIS DOCUMENT FIXES IMMEDIATELY
# ============================================================

This master design immediately fixes the following project-level ambiguity:
- what implementation-ready means
- what the top-level module map is
- what the stable data ownership classes are
- what schema clusters are required
- what the minimal endpoint surface is
- what the standard event envelope is
- what the core state machines are
- what screens are mandatory
- what acceptance gate must exist before implementation starts

# ============================================================
# 15. REMAINING BUNDLED WORK
# ============================================================

Remaining work is not new invention.
It is deterministic expansion of this master design into the existing layer files.

remaining_bundle_A:
- rewrite 090.interface files into exact request/response contracts using section 7
- rewrite 050.flow files into step-by-step execution using sections 8 and 9
- rewrite 120.implementation files into module/table mappings using sections 5 and 6

remaining_bundle_B:
- rewrite 030.model files to fixed entity specs using section 4.2 and section 6
- rewrite 070.operations and 080.policy files to operational exactness using sections 11 and 12
- rewrite 110.infrastructure files to runtime/job visibility using sections 8, 9, and 12

remaining_bundle_C:
- normalize all domain files to canonical status
- regenerate integrated rebuilt output
- generate document-to-build trace matrix

# ============================================================
# 16. CONCLUSION
# ============================================================

LifeOS should now be treated as follows.

current_truth:
- structurally expanded
- not skeleton-only
- not fully implementation-ready yet

new_decision:
- implementation-ready baseline is now fixed by this master design
- all remaining completion work must inherit this baseline
- completion should proceed in 4 large bundled passes, not many tiny rounds


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY PASS 2
# DOMAIN DATA AND FLOW EXACTNESS
# ============================================================

status: pass-2-master-design
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-16
purpose:
Freeze the implementation-ready domain data, flow, API, state, event,
and UI-stateflow contracts for the major LifeOS domains covered by pass 2.

# ============================================================
# 0. ROADMAP
# ============================================================

overall_goal:
Move LifeOS from structurally-expanded design to implementation-ready design.

full_completion_roadmap:
- pass_1 baseline fixed
- pass_2 domain data and flow exactness
- pass_3 review, intelligence, operations, security, infrastructure exactness
- pass_4 interface normalization, implementation mapping completion, final status normalization

current_position:
- pass_1: done
- pass_2: fixed by this document
- pass_3: remaining
- pass_4: remaining

pass_2_scope:
- 210.life-core
- 211.health-condition
- 212.meal-nutrition
- 213.sleep-recovery
- 214.activity-exercise
- 215.home-and-living
- 216.personal-finance-lite
- 222.external-device-and-sensor
- 223.family-household-boundary

pass_2_exit_condition:
Each domain in scope has all of the following fixed:
- owned tables and key columns
- exact write and read APIs
- state machines
- emitted and consumed events
- screen stateflow contract
- implementation module ownership
- minimum acceptance cases

# ============================================================
# 1. SHARED PASS-2 EXACTNESS RULES
# ============================================================

## 1.1 common identifiers
- user_id: uuid
- household_scope_code: private|household|shared_item
- idempotency_key: string, required on all POST/PATCH write commands
- correlation_id: string|null, required for external or async processing
- trace_ref: string|null, required for all derived or rendered outputs

## 1.2 common write response contract
Every successful write in pass 2 returns this shape.

```json
{
  "status": "accepted",
  "resource_id": "uuid",
  "resource_type": "string",
  "trace_ref": "string|null",
  "followup_job_enqueued": true,
  "correlation_id": "string|null"
}
```

## 1.3 common error envelope
```json
{
  "error_code": "LIFE-VALIDATION-001",
  "message": "string",
  "field_errors": [
    {
      "field": "string",
      "reason": "string"
    }
  ],
  "correlation_id": "string|null"
}
```

## 1.4 common source_type enum
- manual
- imported
- device
- system
- household_sync

## 1.5 common audit rule
All accepted writes must create:
- one business row or one state transition row
- one audit row
- one event outbox row when downstream processing is required

## 1.6 common correction rule
- raw_fact rows are corrected by append-and-supersede, not destructive overwrite
- derived_signal rows are regenerated, not directly edited
- summary rows are re-rendered when source facts change

## 1.7 common privacy class
- class_p0_public_copy_safe
- class_p1_personal_standard
- class_p2_sensitive_life
- class_p3_highly_sensitive_masked

health and finance default to class_p3_highly_sensitive_masked.
Household-visible home-stock items default to class_p1_personal_standard or class_p0_public_copy_safe depending on content.

# ============================================================
# 2. 210.LIFE-CORE
# ============================================================

purpose:
Fix the exact contract for identity, profile, schedule, routine, task, goal,
reminder, and note-memory handling.

existing_model_alignment:
- 0302100_LIFE_IDENTITY_MODEL
- 0302101_LIFE_PROFILE_MODEL
- 0302102_LIFE_SCHEDULE_MODEL
- 0302103_LIFE_ROUTINE_MODEL
- 0302104_LIFE_REMINDER_MODEL
- 0302105_LIFE_TASK_MODEL
- 0302106_LIFE_GOAL_MODEL
- 0302107_LIFE_NOTE_MEMORY_MODEL
- 0502100_LIFE_CORE_FLOW

## 2.1 owned tables

### life_profile
required_fields:
- id
- user_id
- display_name
- birth_year nullable
- timezone_code
- language_code
- primary_currency_code
- week_start_day_code
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_schedule_record
required_fields:
- id
- user_id
- schedule_type
- title
- scheduled_start_at
- scheduled_end_at nullable
- timezone_code
- schedule_status
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

schedule_type_enum:
- appointment
- routine_block
- reminder_block
- personal_event
- review_block

### life_routine_record
required_fields:
- id
- user_id
- routine_code
- title
- cadence_type
- cadence_rule_json
- active_from
- active_to nullable
- routine_status
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

cadence_type_enum:
- daily
- weekly
- monthly
- custom

### life_task_record
required_fields:
- id
- user_id
- parent_goal_id nullable
- task_scope
- title
- due_at nullable
- priority_code
- task_status
- completion_at nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

task_scope_enum:
- life
- health
- home
- finance
- review

priority_code_enum:
- low
- medium
- high

### life_goal_record
required_fields:
- id
- user_id
- goal_scope
- title
- target_metric_code nullable
- target_value_number nullable
- target_due_date nullable
- goal_status
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

goal_scope_enum:
- health
- sleep
- activity
- finance
- home
- personal

### life_reminder_record
required_fields:
- id
- user_id
- target_type
- target_id
- reminder_at
- reminder_channel
- reminder_status
- silence_window_applied
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_note_memory_record
required_fields:
- id
- user_id
- note_type
- title nullable
- note_text
- occurred_at nullable
- visibility_scope_code
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 2.2 exact APIs

### POST /life/profile
request:
```json
{
  "user_id": "uuid",
  "display_name": "string",
  "birth_year": 1990,
  "timezone_code": "Asia/Tokyo",
  "language_code": "ja-JP",
  "primary_currency_code": "JPY",
  "week_start_day_code": "monday",
  "idempotency_key": "string"
}
```
response.resource_type: life_profile

### POST /life/schedules
request:
```json
{
  "user_id": "uuid",
  "schedule_type": "appointment",
  "title": "string",
  "scheduled_start_at": "ISO8601",
  "scheduled_end_at": "ISO8601|null",
  "timezone_code": "Asia/Tokyo",
  "note": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_schedule_record

### PATCH /life/schedules/{schedule_id}
request:
```json
{
  "title": "string|null",
  "scheduled_start_at": "ISO8601|null",
  "scheduled_end_at": "ISO8601|null",
  "schedule_status": "planned|active|completed|skipped|archived",
  "note": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_schedule_record

### POST /life/routines
request:
```json
{
  "user_id": "uuid",
  "routine_code": "wake_up",
  "title": "Wake Up",
  "cadence_type": "daily",
  "cadence_rule_json": {
    "by_hour": 7,
    "by_minute": 0
  },
  "active_from": "YYYY-MM-DD",
  "active_to": null,
  "idempotency_key": "string"
}
```
response.resource_type: life_routine_record

### POST /life/tasks
request:
```json
{
  "user_id": "uuid",
  "parent_goal_id": "uuid|null",
  "task_scope": "life",
  "title": "string",
  "due_at": "ISO8601|null",
  "priority_code": "medium",
  "idempotency_key": "string"
}
```
response.resource_type: life_task_record

### PATCH /life/tasks/{task_id}/complete
request:
```json
{
  "completion_at": "ISO8601",
  "completion_note": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_task_record

### POST /life/goals
request:
```json
{
  "user_id": "uuid",
  "goal_scope": "personal",
  "title": "string",
  "target_metric_code": "steps|null",
  "target_value_number": 8000,
  "target_due_date": "YYYY-MM-DD|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_goal_record

### GET /life/today
response:
```json
{
  "user_id": "uuid",
  "date": "YYYY-MM-DD",
  "today_schedules": [],
  "today_tasks": [],
  "routine_prompts": [],
  "review_due": false,
  "trace_ref": "string|null"
}
```

## 2.3 state machines

schedule_state:
- planned
- active
- completed
- skipped
- archived

routine_state:
- draft
- active
- paused
- archived

task_state:
- open
- in_progress
- completed
- skipped
- archived

goal_state:
- draft
- active
- completed
- on_hold
- archived

reminder_state:
- scheduled
- suppressed
- delivered
- acknowledged
- expired

## 2.4 emitted events
- life.core.profile.updated
- life.core.schedule.created
- life.core.schedule.updated
- life.core.routine.created
- life.core.task.created
- life.core.task.completed
- life.core.goal.created
- life.core.reminder.scheduled

## 2.5 UI-stateflow
mandatory_screens:
- dashboard
- schedule_create_sheet
- routine_editor
- task_list
- goal_editor

screen_rules:
- schedule_create_sheet: draft -> validate -> submit -> accepted|error
- task_list item complete: idle -> confirm -> accepted|error
- goal_editor: draft -> validate -> submit -> accepted|error

## 2.6 implementation module ownership
- domain.lifecore.profile
- domain.lifecore.schedule
- domain.lifecore.routine
- domain.lifecore.task
- domain.lifecore.goal
- domain.lifecore.reminder
- feature.dashboard
- feature.records.tasks

## 2.7 acceptance
- create profile and verify language/currency/timezone persistence
- create schedule and transition planned -> completed
- create task and replay completion with same idempotency key
- create goal with target metric and verify related task linkage

# ============================================================
# 3. 211.HEALTH-CONDITION
# ============================================================

purpose:
Fix the exact contract for user-observed condition facts, medication logging,
visit recording, recovery tracking, warning-sign handling, and lightweight health signals.

existing_model_alignment:
- 0302112_LIFE_SYMPTOM_MODEL
- 0302113_LIFE_MEDICATION_MODEL
- 0302114_LIFE_RECOVERY_MODEL
- 0302115_LIFE_CONDITION_SEVERITY_MODEL
- 0302116_LIFE_VISIT_RECORD_MODEL
- 0302117_LIFE_WARNING_SIGN_MODEL
- 0302118_LIFE_BODY_STATE_TREND_MODEL
- 0302119_LIFE_CONDITION_TRIGGER_MODEL
- 0502112_LIFE_CONDITION_LOGGING_FLOW
- 0502113_LIFE_MEDICATION_LOGGING_FLOW
- 0502114_LIFE_VISIT_RECORDING_FLOW

## 3.1 owned tables

### life_health_record
required_fields:
- id
- user_id
- occurred_at
- symptom_code nullable
- condition_note nullable
- severity_level
- body_temperature_celsius nullable
- stress_relation_note nullable
- source_type
- source_ref nullable
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_medication_record
required_fields:
- id
- user_id
- occurred_at
- medication_name
- dose_text nullable
- purpose_note nullable
- effect_note nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_visit_record
required_fields:
- id
- user_id
- visit_start_at
- visit_type
- location_name nullable
- visit_note nullable
- followup_required
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

visit_type_enum:
- clinic
- hospital
- pharmacy
- therapy
- checkup
- other

### life_recovery_record
required_fields:
- id
- user_id
- observed_at
- recovery_level
- rest_taken_minutes nullable
- hydration_ml nullable
- recovery_note nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_health_signal
required_fields:
- id
- user_id
- signal_code
- signal_severity
- source_refs_json
- detected_at
- expires_at nullable
- resolution_status
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

signal_code_enum:
- symptom_persistence
- elevated_temperature
- medication_missed_pattern
- visit_followup_due
- recovery_delay

## 3.2 exact APIs

### POST /life/records/health
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "symptom_code": "headache|null",
  "condition_note": "string|null",
  "severity_level": 3,
  "body_temperature_celsius": 37.2,
  "stress_relation_note": "string|null",
  "source_type": "manual",
  "idempotency_key": "string"
}
```
response.resource_type: life_health_record

### POST /life/records/health/medications
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "medication_name": "string",
  "dose_text": "string|null",
  "purpose_note": "string|null",
  "effect_note": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_medication_record

### POST /life/records/health/visits
request:
```json
{
  "user_id": "uuid",
  "visit_start_at": "ISO8601",
  "visit_type": "clinic",
  "location_name": "string|null",
  "visit_note": "string|null",
  "followup_required": true,
  "idempotency_key": "string"
}
```
response.resource_type: life_visit_record

### POST /life/records/health/recovery
request:
```json
{
  "user_id": "uuid",
  "observed_at": "ISO8601",
  "recovery_level": 2,
  "rest_taken_minutes": 30,
  "hydration_ml": 300,
  "recovery_note": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_recovery_record

### GET /life/health/summary
response:
```json
{
  "user_id": "uuid",
  "current_signals": [],
  "recent_condition_entries": [],
  "followup_due_visits": [],
  "trace_ref": "string"
}
```

## 3.3 state machines

health_record_state:
- accepted
- normalized
- evaluated
- corrected
- archived

health_signal_state:
- detected
- review_pending
- active
- muted
- resolved
- expired

visit_followup_state:
- none
- due
- scheduled
- completed
- expired

## 3.4 emitted and consumed events
emitted:
- life.health.recorded
- life.health.medication.recorded
- life.health.visit.recorded
- life.health.recovery.recorded
- life.health.signal.generated
- life.health.followup.task.requested

consumed:
- life.record.corrected
- life.review.daily_generated

## 3.5 UI-stateflow
mandatory_screens:
- condition_input
- medication_input
- visit_input
- health_summary

screen_rules:
- condition_input must support symptom quick-picks + free note
- health_summary must support trace-open and correction-request
- no screen may present diagnosis wording or diagnosis labels

## 3.6 implementation module ownership
- domain.health.record
- domain.health.medication
- domain.health.visit
- domain.health.recovery
- domain.health.signal
- feature.records.health
- feature.reviews.health

## 3.7 acceptance
- record repeated symptom and verify persistence signal generation
- record medication and verify reminder/followup linkability
- record visit with followup_required=true and verify followup task creation
- correct one symptom row and verify health summary re-render

# ============================================================
# 4. 212.MEAL-NUTRITION
# ============================================================

purpose:
Fix the exact contract for meal logging, hydration logging, diet restrictions,
food preference, allergy basis, nutrition summary, and recommendation basis.

existing_model_alignment:
- 0302122_LIFE_NUTRITION_SUMMARY_MODEL
- 0302123_LIFE_FOOD_PREFERENCE_MODEL
- 0302124_LIFE_DIETARY_RESTRICTION_MODEL
- 0302125_LIFE_HYDRATION_MODEL
- 0302126_LIFE_MEAL_TIMING_MODEL
- 0302127_LIFE_ALLERGY_MODEL
- 0302128_LIFE_MEAL_RECOMMENDATION_BASIS_MODEL
- 0502122_LIFE_MEAL_LOGGING_FLOW
- 0502123_LIFE_HYDRATION_LOGGING_FLOW
- 0502124_LIFE_MEAL_REVIEW_FLOW

## 4.1 owned tables

### life_meal_record
required_fields:
- id
- user_id
- occurred_at
- meal_type
- items_json
- free_note nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

meal_type_enum:
- breakfast
- lunch
- dinner
- snack

### life_hydration_record
required_fields:
- id
- user_id
- occurred_at
- intake_ml
- drink_type_code nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_dietary_rule_record
required_fields:
- id
- user_id
- rule_type
- rule_value
- note nullable
- effective_from
- effective_to nullable
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

rule_type_enum:
- allergy
- intolerance
- preference
- restriction
- religious_or_cultural

### life_nutrition_signal
required_fields:
- id
- user_id
- signal_code
- signal_severity
- source_refs_json
- detected_at
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

signal_code_enum:
- hydration_low
- irregular_meal_timing
- meal_skip_pattern
- restriction_conflict
- low_variety_pattern

## 4.2 exact APIs

### POST /life/records/meal
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "meal_type": "lunch",
  "items": [
    {
      "item_name": "rice",
      "quantity_text": "1 bowl"
    }
  ],
  "free_note": "string|null",
  "source_type": "manual",
  "idempotency_key": "string"
}
```
response.resource_type: life_meal_record

### POST /life/records/hydration
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "intake_ml": 250,
  "drink_type_code": "water|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_hydration_record

### POST /life/preferences/dietary-rules
request:
```json
{
  "user_id": "uuid",
  "rule_type": "restriction",
  "rule_value": "low_salt",
  "note": "string|null",
  "effective_from": "YYYY-MM-DD",
  "effective_to": null,
  "idempotency_key": "string"
}
```
response.resource_type: life_dietary_rule_record

### GET /life/nutrition/summary
response:
```json
{
  "user_id": "uuid",
  "date_range": {
    "from": "YYYY-MM-DD",
    "to": "YYYY-MM-DD"
  },
  "meal_timing_pattern": "stable|late|irregular",
  "hydration_total_ml": 0,
  "active_signals": [],
  "trace_ref": "string"
}
```

## 4.3 state machines
- meal_record: accepted -> evaluated -> summarized -> corrected -> archived
- hydration_record: accepted -> evaluated -> summarized -> corrected -> archived
- nutrition_signal: detected -> active -> muted -> resolved -> expired

## 4.4 emitted events
- life.meal.recorded
- life.hydration.recorded
- life.nutrition.signal.generated
- life.nutrition.summary.updated

## 4.5 UI-stateflow
mandatory_screens:
- meal_input
- hydration_quick_input
- nutrition_summary

screen_rules:
- meal_input must allow multiple items per entry
- hydration_quick_input must support one-tap common amounts
- nutrition_summary must expose trace-open for any active signal

## 4.6 implementation module ownership
- domain.meal.record
- domain.meal.hydration
- domain.meal.rule
- domain.meal.signal
- feature.records.meal
- feature.reviews.nutrition

## 4.7 acceptance
- record breakfast/lunch/dinner and verify meal timing classification
- record low hydration day and verify hydration_low signal
- add dietary restriction and verify recommendation conflict blocking

# ============================================================
# 5. 213.SLEEP-RECOVERY
# ============================================================

purpose:
Fix the exact contract for sleep, nap, disruption, sleep debt,
and recovery action handling.

existing_model_alignment:
- 0302132_LIFE_SLEEP_QUALITY_MODEL
- 0302133_LIFE_SLEEP_DEBT_MODEL
- 0302134_LIFE_RECOVERY_ACTION_MODEL
- 0302135_LIFE_SLEEP_DISRUPTION_MODEL
- 0302136_LIFE_REST_PATTERN_MODEL
- 0302137_LIFE_NAP_MODEL
- 0302138_LIFE_SLEEP_RECOMMENDATION_BASIS_MODEL
- 0502132_LIFE_SLEEP_LOGGING_FLOW
- 0502133_LIFE_NAP_LOGGING_FLOW
- 0502134_LIFE_SLEEP_REVIEW_FLOW

## 5.1 owned tables

### life_sleep_record
required_fields:
- id
- user_id
- sleep_start_at
- sleep_end_at
- quality_level
- wake_count nullable
- source_type
- source_ref nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_nap_record
required_fields:
- id
- user_id
- nap_start_at
- nap_end_at
- recovery_feel_level nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_sleep_signal
required_fields:
- id
- user_id
- signal_code
- signal_severity
- source_refs_json
- detected_at
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

signal_code_enum:
- short_sleep
- repeated_disruption
- sleep_debt_pattern
- late_sleep_pattern
- recovery_improvement

## 5.2 exact APIs

### POST /life/records/sleep
request:
```json
{
  "user_id": "uuid",
  "sleep_start_at": "ISO8601",
  "sleep_end_at": "ISO8601",
  "quality_level": 3,
  "wake_count": 1,
  "source_type": "manual|device",
  "source_ref": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_sleep_record

### POST /life/records/sleep/naps
request:
```json
{
  "user_id": "uuid",
  "nap_start_at": "ISO8601",
  "nap_end_at": "ISO8601",
  "recovery_feel_level": 2,
  "idempotency_key": "string"
}
```
response.resource_type: life_nap_record

### GET /life/sleep/summary
response:
```json
{
  "user_id": "uuid",
  "latest_sleep_duration_minutes": 0,
  "sleep_debt_level": "none|low|medium|high",
  "active_signals": [],
  "trace_ref": "string"
}
```

## 5.3 state machines
- sleep_record: accepted -> normalized -> evaluated -> summarized -> corrected -> archived
- nap_record: accepted -> evaluated -> summarized -> corrected -> archived
- sleep_signal: detected -> active -> muted -> resolved -> expired

## 5.4 emitted events
- life.sleep.recorded
- life.sleep.nap.recorded
- life.sleep.signal.generated
- life.sleep.summary.updated

## 5.5 UI-stateflow
mandatory_screens:
- sleep_input
- nap_input
- sleep_summary

screen_rules:
- sleep_input must allow manual and device-attributed entry
- sleep_summary must show sleep debt state without medical diagnosis wording

## 5.6 implementation module ownership
- domain.sleep.record
- domain.sleep.nap
- domain.sleep.signal
- feature.records.sleep
- feature.reviews.sleep

## 5.7 acceptance
- log short sleep and verify short_sleep signal
- import device-attributed sleep and verify source_ref preservation
- correct sleep end time and verify summary recalculation

# ============================================================
# 6. 214.ACTIVITY-EXERCISE
# ============================================================

purpose:
Fix the exact contract for activity logging, exercise sessions,
movement summary, fatigue link, continuity, and activity goal progress.

existing_model_alignment:
- 0302142_LIFE_EXERCISE_SESSION_MODEL
- 0302143_LIFE_ACTIVITY_INTENSITY_MODEL
- 0302144_LIFE_MOVEMENT_SUMMARY_MODEL
- 0302145_LIFE_FATIGUE_LINK_MODEL
- 0302146_LIFE_CONTINUITY_MODEL
- 0302147_LIFE_STEP_SUMMARY_MODEL
- 0302148_LIFE_ACTIVITY_GOAL_PROGRESS_MODEL
- 0502142_LIFE_ACTIVITY_LOGGING_FLOW
- 0502143_LIFE_EXERCISE_COMPLETION_FLOW
- 0502144_LIFE_ACTIVITY_REVIEW_FLOW

## 6.1 owned tables

### life_activity_record
required_fields:
- id
- user_id
- occurred_at
- activity_type
- duration_minutes nullable
- distance_meters nullable
- step_count nullable
- intensity_level nullable
- source_type
- source_ref nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

activity_type_enum:
- walk
- run
- workout
- stretch
- cycling
- other

### life_activity_goal_progress
required_fields:
- id
- user_id
- goal_id
- metric_code
- progress_value_number
- measured_at
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_activity_signal
required_fields:
- id
- user_id
- signal_code
- signal_severity
- source_refs_json
- detected_at
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

signal_code_enum:
- inactivity_pattern
- continuity_break
- overload_risk
- goal_progress_positive

## 6.2 exact APIs

### POST /life/records/activity
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "activity_type": "walk",
  "duration_minutes": 40,
  "distance_meters": 3200,
  "step_count": 4500,
  "intensity_level": 2,
  "source_type": "manual|device",
  "source_ref": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_activity_record

### GET /life/activity/summary
response:
```json
{
  "user_id": "uuid",
  "today_steps": 0,
  "today_active_minutes": 0,
  "continuity_days": 0,
  "active_signals": [],
  "trace_ref": "string"
}
```

## 6.3 state machines
- activity_record: accepted -> normalized -> evaluated -> summarized -> corrected -> archived
- activity_signal: detected -> active -> muted -> resolved -> expired
- goal_progress: open -> progressing -> achieved -> reset

## 6.4 emitted events
- life.activity.recorded
- life.activity.signal.generated
- life.activity.goal.progressed

## 6.5 UI-stateflow
mandatory_screens:
- activity_input
- activity_summary
- goal_progress_card

screen_rules:
- activity_input must support manual quick entry and device-attributed entry
- goal_progress_card must deep-link to related goal

## 6.6 implementation module ownership
- domain.activity.record
- domain.activity.signal
- domain.activity.goalprogress
- feature.records.activity
- feature.reviews.activity

## 6.7 acceptance
- record walking entry and verify continuity increment
- record inactivity gap and verify inactivity_pattern signal
- verify goal progress updates from activity records without overwriting raw records

# ============================================================
# 7. 215.HOME-AND-LIVING
# ============================================================

purpose:
Fix the exact contract for home tasks, shopping items, stock, cleaning cycles,
home reminders, household routines, and shortage signals.

existing_model_alignment:
- 0302152_LIFE_HOME_TASK_MODEL
- 0302153_LIFE_SHOPPING_ITEM_MODEL
- 0302154_LIFE_INVENTORY_ITEM_MODEL
- 0302155_LIFE_CLEANING_CYCLE_MODEL
- 0302156_LIFE_HOME_REMINDER_MODEL
- 0302157_LIFE_HOUSEHOLD_ROUTINE_MODEL
- 0302158_LIFE_SUPPLY_SHORTAGE_SIGNAL_MODEL
- 0502152_LIFE_HOME_TASK_FLOW
- 0502153_LIFE_SHOPPING_LIST_FLOW
- 0502154_LIFE_STOCK_REPLENISHMENT_FLOW

## 7.1 owned tables

### life_home_task_record
required_fields:
- id
- user_id
- household_scope_code
- title
- home_area_code nullable
- due_at nullable
- assigned_member_id nullable
- task_status
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_shopping_item_record
required_fields:
- id
- user_id
- household_scope_code
- item_name
- quantity_text nullable
- item_status
- linked_inventory_item_id nullable
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_inventory_item_record
required_fields:
- id
- user_id
- household_scope_code
- item_name
- quantity_number nullable
- quantity_unit_code nullable
- reorder_threshold_number nullable
- stock_status
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_home_signal
required_fields:
- id
- user_id
- signal_code
- signal_severity
- source_refs_json
- detected_at
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

signal_code_enum:
- supply_shortage
- cleaning_overdue
- routine_break

## 7.2 exact APIs

### POST /life/home/tasks
request:
```json
{
  "user_id": "uuid",
  "household_scope_code": "private|household",
  "title": "string",
  "home_area_code": "kitchen|null",
  "due_at": "ISO8601|null",
  "assigned_member_id": "uuid|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_home_task_record

### PATCH /life/home/tasks/{task_id}/complete
request:
```json
{
  "completed_at": "ISO8601",
  "completion_note": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_home_task_record

### POST /life/home/shopping-items
request:
```json
{
  "user_id": "uuid",
  "household_scope_code": "household",
  "item_name": "string",
  "quantity_text": "2 packs|null",
  "linked_inventory_item_id": "uuid|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_shopping_item_record

### POST /life/home/inventory-items
request:
```json
{
  "user_id": "uuid",
  "household_scope_code": "household",
  "item_name": "detergent",
  "quantity_number": 1,
  "quantity_unit_code": "bottle",
  "reorder_threshold_number": 1,
  "idempotency_key": "string"
}
```
response.resource_type: life_inventory_item_record

### GET /life/home/summary
response:
```json
{
  "user_id": "uuid",
  "open_tasks": [],
  "shopping_list": [],
  "low_stock_items": [],
  "active_signals": [],
  "trace_ref": "string"
}
```

## 7.3 state machines
- home_task: open -> in_progress -> completed -> skipped -> archived
- shopping_item: listed -> in_cart -> purchased -> removed -> archived
- inventory_item: in_stock -> low_stock -> out_of_stock -> replenishing -> archived
- home_signal: detected -> active -> muted -> resolved -> expired

## 7.4 emitted events
- life.home.task.created
- life.home.task.completed
- life.home.shopping_item.listed
- life.home.inventory.updated
- life.home.signal.generated

## 7.5 UI-stateflow
mandatory_screens:
- home_task_list
- shopping_list
- stock_list

screen_rules:
- shopping list must support quick add and purchased toggle
- stock list must support low-stock highlight and reorder trace
- household scope must be visible and editable only when user has authority

## 7.6 implementation module ownership
- domain.home.task
- domain.home.shopping
- domain.home.inventory
- domain.home.signal
- feature.records.home
- feature.reviews.home

## 7.7 acceptance
- create stock item below reorder threshold and verify supply_shortage signal
- toggle shopping item purchased and verify linked inventory update path
- create household-scoped task and verify scope enforcement on unauthorized view

# ============================================================
# 8. 216.PERSONAL-FINANCE-LITE
# ============================================================

purpose:
Fix the exact contract for expense logging, budget review,
payment method, recurring cost, spending trend, alerts, and multi-currency support.

existing_model_alignment:
- 0302162_LIFE_PERSONAL_EXPENSE_MODEL
- 0302163_LIFE_BUDGET_MODEL
- 0302164_LIFE_SPENDING_CATEGORY_MODEL
- 0302165_LIFE_RECURRING_COST_MODEL
- 0302166_LIFE_SPENDING_ALERT_MODEL
- 0302167_LIFE_PAYMENT_METHOD_MODEL
- 0302168_LIFE_SPENDING_TREND_MODEL
- 0302171_LIFE_PERSONAL_EXPENSE_MULTI_CURRENCY_EXTENSION_MODEL
- 0302172_LIFE_BUDGET_MULTI_CURRENCY_EXTENSION_MODEL
- 0502162_LIFE_EXPENSE_LOGGING_FLOW
- 0502163_LIFE_BUDGET_REVIEW_FLOW
- 0502164_LIFE_SPENDING_ALERT_FLOW
- 0602162_LIFE_PERSONAL_FINANCE_INTEGRATION
- 0602163_LIFE_FINANCE_EXPORT_BOUNDARY

## 8.1 owned tables

### life_expense_record
required_fields:
- id
- user_id
- occurred_at
- category_code
- amount_number
- currency_code
- display_currency_code
- payment_method_id nullable
- merchant_name nullable
- memo nullable
- source_type
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

category_code_enum:
- food
- home
- transport
- health
- education
- subscription
- other

### life_budget_record
required_fields:
- id
- user_id
- budget_scope
- period_type
- period_start_date
- period_end_date
- category_code nullable
- budget_amount_number
- currency_code
- alert_threshold_percent nullable
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_payment_method_record
required_fields:
- id
- user_id
- method_type
- method_label
- method_last4 nullable
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_finance_signal
required_fields:
- id
- user_id
- signal_code
- signal_severity
- source_refs_json
- detected_at
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

signal_code_enum:
- budget_threshold_near
- budget_exceeded
- recurring_cost_due
- unusual_spend_pattern
- multi_currency_attention

## 8.2 exact APIs

### POST /life/records/expense
request:
```json
{
  "user_id": "uuid",
  "occurred_at": "ISO8601",
  "category_code": "food",
  "amount": 1200.0,
  "currency_code": "JPY",
  "display_currency_code": "JPY",
  "payment_method_id": "uuid|null",
  "merchant_name": "string|null",
  "memo": "string|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_expense_record

### POST /life/finance/budgets
request:
```json
{
  "user_id": "uuid",
  "budget_scope": "overall|category",
  "period_type": "monthly",
  "period_start_date": "YYYY-MM-DD",
  "period_end_date": "YYYY-MM-DD",
  "category_code": "food|null",
  "budget_amount_number": 50000,
  "currency_code": "JPY",
  "alert_threshold_percent": 80,
  "idempotency_key": "string"
}
```
response.resource_type: life_budget_record

### POST /life/finance/payment-methods
request:
```json
{
  "user_id": "uuid",
  "method_type": "card|cash|bank|wallet|other",
  "method_label": "Main Card",
  "method_last4": "1234|null",
  "idempotency_key": "string"
}
```
response.resource_type: life_payment_method_record

### GET /life/finance/summary
response:
```json
{
  "user_id": "uuid",
  "month_total": 0.0,
  "currency_code": "JPY",
  "budget_status": "safe|near_limit|exceeded",
  "active_signals": [],
  "trace_ref": "string"
}
```

## 8.3 state machines
- expense_record: accepted -> normalized -> evaluated -> summarized -> corrected -> archived
- budget_record: draft -> active -> closed -> archived
- finance_signal: detected -> active -> muted -> resolved -> expired

## 8.4 emitted and consumed events
emitted:
- life.finance.expense.recorded
- life.finance.budget.created
- life.finance.signal.generated
- life.finance.summary.updated

consumed:
- life.currency.setting.updated
- life.record.corrected

## 8.5 UI-stateflow
mandatory_screens:
- expense_input
- budget_editor
- finance_summary
- multi_currency_expense_input

screen_rules:
- original currency fact is immutable after accepted write
- display currency is presentation-only and may be recomputed
- finance summary defaults to masked values in operator/admin contexts

## 8.6 implementation module ownership
- domain.finance.expense
- domain.finance.budget
- domain.finance.paymentmethod
- domain.finance.signal
- feature.records.finance
- feature.reviews.finance

## 8.7 acceptance
- record expense in JPY and verify budget evaluation
- record expense in foreign currency and verify original/display separation
- exceed threshold and verify budget_threshold_near then budget_exceeded signal behavior

# ============================================================
# 9. 222.EXTERNAL-DEVICE-AND-SENSOR
# ============================================================

purpose:
Fix the exact contract for external account linkage, device import, raw measurement storage,
normalization, sync state, and source traceability.

existing_model_alignment:
- 0302222_LIFE_DEVICE_SOURCE_MODEL
- 0302223_LIFE_SENSOR_READING_MODEL
- 0302224_LIFE_MEASUREMENT_IMPORT_MODEL
- 0302225_LIFE_MEASUREMENT_NORMALIZATION_MODEL
- 0302226_LIFE_DEVICE_SYNC_STATE_MODEL
- 0502222_LIFE_SENSOR_IMPORT_FLOW
- 0502223_LIFE_MEASUREMENT_NORMALIZATION_FLOW
- 0602222_LIFE_DEVICE_IMPORT_INTEGRATION
- 0602223_LIFE_SENSOR_SYNC_INTEGRATION
- 1202222_DEVICE_AND_SENSOR_IMPLEMENTATION_GUIDE

## 9.1 owned tables

### life_external_source_account
required_fields:
- id
- user_id
- provider_code
- external_account_ref
- link_status
- last_sync_at nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

provider_code_enum:
- apple_health
- google_fit
- fitbit
- garmin
- manual_upload
- other

### life_device_measurement_raw
required_fields:
- id
- user_id
- source_account_id
- source_batch_ref
- measured_at
- metric_code
- value_number
- unit_code
- raw_payload_hash nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_device_measurement_normalized
required_fields:
- id
- user_id
- raw_measurement_id
- normalized_metric_code
- normalized_value_number
- normalized_unit_code
- normalization_status
- trace_ref
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_device_sync_state
required_fields:
- id
- user_id
- source_account_id
- sync_cursor nullable
- sync_status
- last_error_code nullable
- last_synced_range_json nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 9.2 exact APIs

### POST /life/device-sources/link
request:
```json
{
  "user_id": "uuid",
  "provider_code": "google_fit",
  "external_account_ref": "string",
  "idempotency_key": "string"
}
```
response.resource_type: life_external_source_account

### POST /life/device-import/batches
request:
```json
{
  "user_id": "uuid",
  "source_account_id": "uuid",
  "source_batch_ref": "string",
  "measurements": [
    {
      "measured_at": "ISO8601",
      "metric_code": "steps",
      "value_number": 4000,
      "unit_code": "count"
    }
  ],
  "idempotency_key": "string"
}
```
response.resource_type: life_external_import_batch

### GET /life/device-sync/status
response:
```json
{
  "user_id": "uuid",
  "linked_sources": [],
  "last_import_jobs": [],
  "normalization_backlog_count": 0,
  "trace_ref": "string|null"
}
```

## 9.3 state machines
- source_link: pending -> active -> relink_required -> disabled -> archived
- import_batch: accepted -> raw_written -> normalizing -> normalized -> failed_retryable -> dead_letter
- normalized_measurement: pending -> normalized -> rejected -> superseded

## 9.4 emitted and consumed events
emitted:
- life.device.source.linked
- life.device.batch_imported
- life.device.measurement.normalized
- life.device.sync.failed

consumed:
- life.record.corrected
- life.profile.timezone.updated

## 9.5 UI-stateflow
mandatory_screens:
- device_source_linker
- device_sync_status
- import_job_detail

screen_rules:
- device source linking must expose current provider and link state
- sync status must expose retryable failure vs dead-letter state
- user-visible measurement cards must always preserve provider/source attribution

## 9.6 implementation module ownership
- domain.device.source
- domain.device.importbatch
- domain.device.normalization
- domain.device.syncstate
- feature.settings.devices
- feature.admin.imports

## 9.7 acceptance
- import valid batch and verify raw + normalized rows
- re-import same source_batch_ref and verify duplicate rejection/idempotency
- malformed measurement must enter failed_retryable then dead_letter after retry profile exhaustion

# ============================================================
# 10. 223.FAMILY-HOUSEHOLD-BOUNDARY
# ============================================================

purpose:
Fix the exact contract for member scope, private-vs-shared visibility,
home role authority, and household integration boundaries.

existing_model_alignment:
- 0302232_LIFE_HOUSEHOLD_MEMBER_SCOPE_MODEL
- 0302233_LIFE_SHARED_ITEM_SCOPE_MODEL
- 0302234_LIFE_PRIVATE_ENTRY_VISIBILITY_MODEL
- 0302235_LIFE_HOME_ROLE_MODEL
- 0602232_LIFE_HOUSEHOLD_SCOPE_INTEGRATION

## 10.1 owned tables

### life_household_membership
required_fields:
- id
- user_id
- household_id
- member_role_code
- membership_status
- joined_at
- left_at nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

member_role_code_enum:
- owner
- adult_member
- child_member
- viewer

### life_visibility_scope_rule
required_fields:
- id
- user_id
- target_domain_code
- default_scope_code
- allow_household_share_flag
- masked_in_support_view_flag
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_shared_item_scope_rule
required_fields:
- id
- user_id
- item_type_code
- household_scope_code
- editable_roles_json
- viewable_roles_json
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 10.2 exact APIs

### POST /life/households/memberships
request:
```json
{
  "user_id": "uuid",
  "household_id": "uuid",
  "member_role_code": "adult_member",
  "idempotency_key": "string"
}
```
response.resource_type: life_household_membership

### POST /life/privacy/scope-rules
request:
```json
{
  "user_id": "uuid",
  "target_domain_code": "health|finance|home|journal",
  "default_scope_code": "private|household",
  "allow_household_share_flag": false,
  "masked_in_support_view_flag": true,
  "idempotency_key": "string"
}
```
response.resource_type: life_visibility_scope_rule

### GET /life/privacy/summary
response:
```json
{
  "user_id": "uuid",
  "household_membership": {},
  "domain_scope_rules": [],
  "shared_items": [],
  "trace_ref": "string|null"
}
```

## 10.3 state machines
- household_membership: pending -> active -> suspended -> ended -> archived
- visibility_rule: draft -> active -> superseded -> archived

## 10.4 emitted events
- life.household.membership.updated
- life.privacy.scope.updated
- life.household.share.denied
- life.household.share.allowed

## 10.5 UI-stateflow
mandatory_screens:
- privacy_scope_settings
- household_membership_settings
- shared_item_scope_editor

screen_rules:
- health and finance default to private at first-run
- household sharing toggle requires explicit confirm step
- shared scope editor must show which roles can view and edit

## 10.6 implementation module ownership
- domain.household.membership
- domain.household.scope
- domain.household.roles
- feature.settings.privacy
- feature.settings.household

## 10.7 acceptance
- first-run user must receive private defaults for health and finance
- home inventory item may be marked household scope and becomes visible by rule
- health entry may not become household visible without explicit scope change

# ============================================================
# 11. CROSS-DOMAIN FLOW CONTRACTS FIXED IN PASS 2
# ============================================================

## 11.1 record-to-signal flow
1. write command accepted
2. raw_fact row committed
3. audit row committed
4. event outbox row written
5. normalization/evaluation job consumes event
6. derived_signal rows created with trace_ref
7. dashboard / summary read models refreshed

## 11.2 correction-to-rerender flow
1. correction request accepted
2. target raw row marked superseded_by reference
3. corrected replacement row created
4. affected signals invalidated and recomputed
5. affected summaries re-rendered
6. correction audit bundle linked through trace_ref

## 11.3 device-to-domain projection flow
1. external batch accepted
2. raw measurements stored
3. normalization creates domain-usable facts or projections
4. downstream domain signal jobs consume normalized measurements
5. user-visible summaries show source attribution

## 11.4 privacy gate flow
1. read request resolves target domain
2. domain default scope rule loaded
3. explicit item-level override applied if present
4. caller role evaluated
5. masked or full payload selected
6. audit log written for support/admin access

# ============================================================
# 12. FILE REWRITE TARGETS UNLOCKED BY THIS PASS
# ============================================================

The following existing file clusters can now be deterministically rewritten to canonical exactness.

rewrite_targets:
- 030.model/210.life-core/*
- 030.model/211.health-condition/*
- 030.model/212.meal-nutrition/*
- 030.model/213.sleep-recovery/*
- 030.model/214.activity-exercise/*
- 030.model/215.home-and-living/*
- 030.model/216.personal-finance-lite/*
- 030.model/222.external-device-and-sensor/*
- 030.model/223.family-household-boundary/*
- 050.flow/210.life-core/*
- 050.flow/211.health-condition/*
- 050.flow/212.meal-nutrition/*
- 050.flow/213.sleep-recovery/*
- 050.flow/214.activity-exercise/*
- 050.flow/215.home-and-living/*
- 050.flow/216.personal-finance-lite/*
- 050.flow/222.external-device-and-sensor/*
- 060.integration/211.health-condition/*
- 060.integration/216.personal-finance-lite/*
- 060.integration/222.external-device-and-sensor/*
- 060.integration/223.family-household-boundary/*
- 120.implementation/211.health-condition/*
- 120.implementation/215.home-and-living/*
- 120.implementation/216.personal-finance-lite/*
- 120.implementation/222.external-device-and-sensor/*
- 090.interface/300.user-screens/0903002_LIFE_DASHBOARD_UI_DETAIL.md
- 090.interface/300.user-screens/0903004_LIFE_MEAL_INPUT_UI_DETAIL.md
- 090.interface/300.user-screens/0903005_LIFE_SLEEP_INPUT_UI_DETAIL.md
- 090.interface/300.user-screens/0903006_LIFE_CONDITION_INPUT_UI_DETAIL.md
- 090.interface/300.user-screens/0903007_LIFE_ACTIVITY_INPUT_UI_DETAIL.md
- 090.interface/300.user-screens/0903008_LIFE_HOME_TASK_UI_DETAIL.md
- 090.interface/300.user-screens/0903009_LIFE_EXPENSE_INPUT_UI_DETAIL.md

# ============================================================
# 13. WHAT REMAINS AFTER PASS 2
# ============================================================

remaining_pass_3_focus:
- 217.memory-life-log
- 218.assistant-orchestration
- 219.daily-checkin-and-review exact review rendering
- 220.risk-and-alert exact alert safety and escalation
- 221.life-analytics exact pattern and trend contracts
- 060.integration normalization across remaining domains
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure

remaining_pass_4_focus:
- 090.interface full normalization
- 120.implementation completion for all domains
- 130.development acceptance and build order completion
- canonical status normalization and integrated rebuild regeneration

# ============================================================
# 14. CONCLUSION
# ============================================================

This pass-2 document fixes the largest remaining ambiguity in LifeOS:
major domain behavior is no longer defined only at a conceptual layer.
It is now fixed at the level of implementation-owned data, API, state, event,
UI-stateflow, and acceptance behavior.

After this point, remaining work is mostly deterministic file-by-file normalization,
not fresh invention.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY PASS 3
# REVIEW, INTELLIGENCE, INTEGRATION, OPERATIONS, POLICY,
# SECURITY, AND INFRASTRUCTURE EXACTNESS
# ============================================================

status: pass-3-master-design
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-16
purpose:
Freeze the implementation-ready contracts for LifeOS review, memory,
assistant orchestration, risk, analytics, integration, operations,
policy, security, and infrastructure layers.

# ============================================================
# 0. ROADMAP
# ============================================================

overall_goal:
Move LifeOS from structurally-expanded design to implementation-ready design.

full_completion_roadmap:
- pass_1 baseline fixed
- pass_2 domain data and flow exactness fixed
- pass_3 review, intelligence, integration, operations, policy, security, infrastructure exactness fixed by this document
- pass_4 interface normalization, implementation mapping completion, final status normalization remaining

current_position:
- pass_1: done
- pass_2: done
- pass_3: fixed by this document
- pass_4: remaining

pass_3_scope:
- 217.memory-life-log
- 218.assistant-orchestration
- 219.daily-checkin-and-review
- 220.risk-and-alert
- 221.life-analytics
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure

pass_3_exit_condition:
Every area in scope has all of the following fixed:
- owned tables and key columns
- exact write and read APIs
- state machines
- emitted and consumed events
- runtime and job ownership
- operational owner and recovery path
- policy guardrails and blocked actions
- access control and storage class
- infrastructure placement and observability signals
- minimum acceptance cases

# ============================================================
# 1. SHARED PASS-3 EXACTNESS RULES
# ============================================================

## 1.1 guiding principle
LifeOS may summarize, classify, prioritize, and support.
LifeOS must not silently act as a medical, legal, or financial authority.
High-sensitivity outputs must always remain explainable, reviewable, and auditable.

## 1.2 common enum: review_window_type
- daily
- weekly
- monthly
- custom
- milestone

## 1.3 common enum: generated_artifact_status
- queued
- rendering
- ready
- superseded
- failed

## 1.4 common enum: recommendation_disposition
- pending
- shown
- dismissed
- snoozed
- accepted
- completed
- expired
- blocked_by_policy

## 1.5 common enum: priority_band
- p0_critical
- p1_high
- p2_medium
- p3_low

## 1.6 common enum: risk_severity
- info
- low
- medium
- high
- critical

## 1.7 common enum: delivery_channel
- in_app
- push
- email
- sms
- household_feed
- admin_queue
- persona_sync_only

## 1.8 common enum: explanation_level
- headline_only
- brief_reasoning
- expanded_reasoning

## 1.9 common safety rule
The following conditions require explicit human-readable explanation text,
audit logging, and visible user review affordance before action completion.
- any output based on class_p3_highly_sensitive_masked data
- any alert with severity high or critical
- any household-visible recommendation derived from private-only facts
- any persona-sync request carrying personal growth or trust implications
- any suppression of a previously scheduled critical reminder

## 1.10 common no-silent-overwrite rule
Generated summaries, scores, patterns, and recommendations are append-only with supersede semantics.
Previously displayed outputs may be superseded but never silently replaced without audit trace.

## 1.11 common outbox rule
All async side effects in pass 3 must be produced through the LifeOS event outbox.
No direct cross-domain mutation is allowed without an outbox and inbox trail.

# ============================================================
# 2. 217.MEMORY-LIFE-LOG
# ============================================================

purpose:
Fix the exact contract for journal capture, memory event extraction,
reflection generation, memorable-day marking, and retrospective handling.

existing_model_alignment:
- 0302172_LIFE_JOURNAL_ENTRY_MODEL
- 0302173_LIFE_MEMORY_EVENT_MODEL
- 0302174_LIFE_REFLECTION_SUMMARY_MODEL
- 0302175_LIFE_MOOD_LINK_MODEL
- 0302176_LIFE_MEMORABLE_DAY_MODEL
- 0302177_LIFE_RETROSPECTIVE_MODEL
- 0502172_LIFE_JOURNAL_LOGGING_FLOW
- 0502173_LIFE_REFLECTION_FLOW

## 2.1 owned tables

### life_journal_entry
required_fields:
- id
- user_id
- entry_date
- entry_timestamp
- locale_code
- title nullable
- body_text
- source_type
- capture_method manual|voice_transcript|imported
- journal_status draft|submitted|archived|superseded
- contains_sensitive_flag
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_memory_event
required_fields:
- id
- user_id
- source_journal_entry_id nullable
- event_date
- event_type
- event_title
- event_summary_text
- emotional_weight_score nullable
- memorability_score nullable
- extraction_status pending|accepted|rejected|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_mood_link
required_fields:
- id
- user_id
- linked_resource_type journal_entry|memory_event|daily_checkin|review
- linked_resource_id
- mood_code
- mood_intensity_score nullable
- confidence_score nullable
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_reflection_summary
required_fields:
- id
- user_id
- review_window_type
- window_start_date
- window_end_date
- based_on_resource_count
- summary_headline
- summary_body_text
- explanation_level
- artifact_status
- supersedes_id nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_memorable_day
required_fields:
- id
- user_id
- target_date
- memorable_reason_code
- source_resource_count
- memorable_confidence_score
- status suggested|confirmed|dismissed|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_retrospective
required_fields:
- id
- user_id
- retrospective_type month_end|quarter_end|year_end|custom
- window_start_date
- window_end_date
- source_summary_ids_json
- retrospective_text
- key_learnings_json
- generated_artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 2.2 exact APIs

### POST /v1/life/journal-entries
request_fields:
- idempotency_key
- entry_timestamp
- locale_code
- title nullable
- body_text
- capture_method
- mood_code nullable
- mood_intensity_score nullable
response:
- common write response
- resource_type: life_journal_entry

### POST /v1/life/journal-entries/{id}/submit
request_fields:
- idempotency_key
response:
- common write response
- followup_job_enqueued: true

### POST /v1/life/reflections/render
request_fields:
- idempotency_key
- review_window_type
- window_start_date
- window_end_date
- explanation_level
response:
- common write response
- resource_type: life_reflection_summary

### POST /v1/life/memorable-days/{date}/confirm
request_fields:
- idempotency_key
response:
- common write response

### GET /v1/life/journal-entries
query:
- from_date
- to_date
- capture_method nullable
- page_token

### GET /v1/life/reflections
query:
- review_window_type nullable
- from_date nullable
- to_date nullable
- artifact_status default ready

## 2.3 state machines

journal_status_machine:
- draft -> submitted
- submitted -> archived
- submitted -> superseded
- archived -> superseded

reflection_status_machine:
- queued -> rendering
- rendering -> ready
- rendering -> failed
- ready -> superseded
- failed -> queued

memorable_day_status_machine:
- suggested -> confirmed
- suggested -> dismissed
- confirmed -> superseded
- dismissed -> superseded

## 2.4 emitted events
- life.journal_entry.submitted.v1
- life.memory_event.extracted.v1
- life.reflection_summary.ready.v1
- life.memorable_day.confirmed.v1
- life.retrospective.ready.v1

consumed_events:
- life.daily_checkin.completed.v1
- life.review.completed.v1
- life.analytics.pattern.ready.v1

## 2.5 UI stateflow
- Journal Capture Screen: draft -> validate -> submit -> confirmation
- Reflection Screen: request render -> queued banner -> ready view -> superseded banner when refreshed
- Memory Timeline Screen: grouped by date -> open source journal -> mood-linked indicator
- Memorable Day Screen: suggested badge -> confirm or dismiss -> immutable history item

## 2.6 implementation ownership
- module.life-memory.command
- module.life-memory.query
- module.life-memory.render-job
- module.life-memory.event-producer

## 2.7 acceptance
- submitting the same idempotency_key twice must not duplicate journal rows
- reflection rendering must record source counts and supersede previous ready output for same window
- deleting source facts is forbidden; correction must produce supersede chain

# ============================================================
# 3. 218.ASSISTANT-ORCHESTRATION
# ============================================================

purpose:
Fix the exact contract for intervention priority, silence windows,
recommendation ordering, delivery decisions, and persona-assistant orchestration.

existing_model_alignment:
- 0302182_LIFE_INTERVENTION_PRIORITY_MODEL
- 0302183_LIFE_SILENCE_WINDOW_MODEL
- 0302184_LIFE_ESCALATION_RULE_MODEL
- 0302185_LIFE_SUPPORT_TIMING_MODEL
- 0302186_LIFE_REMINDER_TONE_BASIS_MODEL
- 0302187_LIFE_SUGGESTION_PRIORITY_MODEL
- 0402182_LIFE_SUGGESTION_ORCHESTRATION_RUNTIME
- 0402183_LIFE_ESCALATION_RULE_RUNTIME
- 0402184_LIFE_SILENCE_WINDOW_RUNTIME

## 3.1 owned tables

### life_intervention_priority_rule
required_fields:
- id
- user_id
- domain_scope life|health|meal|sleep|activity|home|finance|review
- trigger_type reminder|risk|review|routine_recovery|recommendation
- priority_band
- score_weight_json
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_silence_window
required_fields:
- id
- user_id
- silence_type sleep|work|focus|manual|emergency_override_block
- local_start_time
- local_end_time
- timezone_code
- allow_critical_override_flag
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_escalation_rule
required_fields:
- id
- user_id
- trigger_family risk|non_response|missed_critical_routine|device_gap
- severity_threshold
- escalation_delay_minutes
- target_channel_json
- requires_user_visibility_first_flag
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_support_timing_rule
required_fields:
- id
- user_id
- context_type wakeup|late_evening|post_meal|post_workout|weekly_review|stress_window
- allowed_flag
- preferred_delivery_channel
- preferred_explanation_level
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_reminder_tone_basis
required_fields:
- id
- user_id
- tone_code gentle|neutral|direct|minimal
- applicable_scope reminder|review|risk|household
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_suggestion_priority_rule
required_fields:
- id
- user_id
- suggestion_family recovery|prevention|reflection|budget|home_stock|routine
- ranking_weight_json
- max_active_suggestions integer
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_intervention_decision
required_fields:
- id
- user_id
- source_event_type
- source_event_id
- computed_priority_band
- blocked_by_silence_flag
- blocked_by_policy_flag
- chosen_channel nullable
- explanation_text
- decision_status pending|scheduled|dispatched|blocked|expired|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 3.2 exact APIs

### PUT /v1/life/assistant/silence-windows/{id}
request_fields:
- idempotency_key
- silence_type
- local_start_time
- local_end_time
- timezone_code
- allow_critical_override_flag
- active_flag
response:
- common write response

### PUT /v1/life/assistant/preferences/reminder-tone
request_fields:
- idempotency_key
- tone_code
- applicable_scope
- active_flag
response:
- common write response

### POST /v1/life/assistant/intervention-preview
request_fields:
- idempotency_key
- source_event_type
- source_event_id
response:
- status accepted
- preview:
  - computed_priority_band
  - blocked_by_silence_flag
  - blocked_by_policy_flag
  - chosen_channel nullable
  - explanation_text

### GET /v1/life/assistant/decisions
query:
- decision_status nullable
- from_timestamp nullable
- to_timestamp nullable

## 3.3 state machines

intervention_decision_status_machine:
- pending -> scheduled
- pending -> blocked
- scheduled -> dispatched
- scheduled -> expired
- dispatched -> superseded
- blocked -> superseded

## 3.4 emitted events
- life.intervention.decision.created.v1
- life.intervention.dispatched.v1
- life.intervention.blocked.v1
- life.silence_window.changed.v1

consumed_events:
- life.risk_alert.created.v1
- life.review_signal.created.v1
- life.task.overdue.detected.v1
- life.analytics.recommendation_ready.v1

## 3.5 orchestration rules
- critical risk may bypass silence window only when allow_critical_override_flag is true
- finance suggestions can never be sent to household_feed unless source facts are household-scope and not class_p3
- reminder tone changes affect future dispatch only, never rewrite historical messages
- blocked_by_policy_flag takes precedence over all priority computations

## 3.6 UI stateflow
- Assistant Preference Screen: edit -> validate -> save -> confirmation toast
- Intervention History Screen: pending/scheduled/dispatched/blocked tabs -> detail drawer with explanation text
- Silence Window Screen: create/edit/deactivate -> immediate recomputation of pending non-critical interventions

## 3.7 implementation ownership
- module.life-assistant.rule-engine
- module.life-assistant.preference-command
- module.life-assistant.dispatch-job
- module.life-assistant.explanation-renderer

## 3.8 acceptance
- changing a silence window must reschedule only future non-dispatched decisions
- a blocked decision must store a policy or silence reason, never null reason
- persona-related intervention preview must not expose private raw facts outside consent boundary

# ============================================================
# 4. 219.DAILY-CHECKIN-AND-REVIEW
# ============================================================

purpose:
Fix the exact contract for daily checkin capture, daily summary generation,
weekly review rendering, review signals, and status snapshots.

existing_model_alignment:
- 0302192_LIFE_DAILY_CHECKIN_MODEL
- 0302193_LIFE_DAILY_SUMMARY_MODEL
- 0302194_LIFE_WEEKLY_REVIEW_MODEL
- 0302195_LIFE_REVIEW_SIGNAL_MODEL
- 0302196_LIFE_STATUS_SNAPSHOT_MODEL
- 0502192_LIFE_DAILY_CHECKIN_FLOW
- 0502193_LIFE_DAILY_SUMMARY_FLOW
- 0502194_LIFE_WEEKLY_REVIEW_FLOW

## 4.1 owned tables

### life_daily_checkin
required_fields:
- id
- user_id
- target_date
- mood_code
- energy_score nullable
- stress_score nullable
- sleep_self_rating nullable
- appetite_self_rating nullable
- free_text nullable
- checkin_status draft|submitted|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_daily_summary
required_fields:
- id
- user_id
- target_date
- source_fact_count
- summary_headline
- summary_body_text
- key_flags_json
- generated_artifact_status
- supersedes_id nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_weekly_review
required_fields:
- id
- user_id
- week_start_date
- week_end_date
- source_summary_ids_json
- wins_text
- risks_text
- followup_actions_json
- generated_artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_review_signal
required_fields:
- id
- user_id
- signal_family streak_break|risk_rise|goal_progress|routine_recovery|budget_pressure|sleep_debt
- signal_strength_score
- source_window_start_date
- source_window_end_date
- signal_status open|consumed|dismissed|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_status_snapshot
required_fields:
- id
- user_id
- snapshot_date
- overall_state_code stable|watch|attention|critical
- domain_status_json
- active_signal_count
- unresolved_alert_count
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 4.2 exact APIs

### POST /v1/life/checkins
request_fields:
- idempotency_key
- target_date
- mood_code
- energy_score nullable
- stress_score nullable
- sleep_self_rating nullable
- appetite_self_rating nullable
- free_text nullable
response:
- common write response
- resource_type: life_daily_checkin

### POST /v1/life/daily-summaries/render
request_fields:
- idempotency_key
- target_date
response:
- common write response

### POST /v1/life/weekly-reviews/render
request_fields:
- idempotency_key
- week_start_date
- week_end_date
response:
- common write response

### GET /v1/life/status-snapshots/latest
response_fields:
- snapshot_date
- overall_state_code
- domain_status_json
- active_signal_count
- unresolved_alert_count

## 4.3 state machines

checkin_status_machine:
- draft -> submitted
- submitted -> superseded

review_signal_status_machine:
- open -> consumed
- open -> dismissed
- consumed -> superseded
- dismissed -> superseded

status_snapshot_refresh_machine:
- previous snapshot stays immutable
- next snapshot is append-only per target date

## 4.4 emitted events
- life.daily_checkin.completed.v1
- life.daily_summary.ready.v1
- life.weekly_review.ready.v1
- life.review_signal.created.v1
- life.status_snapshot.refreshed.v1

consumed_events:
- life.health_fact.updated.v1
- life.sleep_fact.updated.v1
- life.activity_fact.updated.v1
- life.finance_budget_state.changed.v1
- life.home_stock_state.changed.v1

## 4.5 UI stateflow
- Daily Checkin Screen: draft -> inline validation -> submit -> done state -> summary CTA
- Daily Summary Screen: loading skeleton -> ready -> superseded badge if re-rendered
- Weekly Review Screen: render request -> queued -> ready -> action cards for followup tasks
- Life Dashboard: latest status snapshot card + open signals + unresolved alerts

## 4.6 implementation ownership
- module.life-review.command
- module.life-review.render-job
- module.life-review.signal-engine
- module.life-review.snapshot-projection

## 4.7 acceptance
- one user may have at most one submitted daily checkin per target date after supersede collapse
- weekly review must store explicit source_summary_ids_json
- dashboard latest snapshot must never read from mutable in-progress summary rows

# ============================================================
# 5. 220.RISK-AND-ALERT
# ============================================================

purpose:
Fix the exact contract for thresholds, risk signals, alert generation,
escalation, and condition alert reasons.

existing_model_alignment:
- 0302202_LIFE_RISK_SIGNAL_MODEL
- 0302203_LIFE_ALERT_MODEL
- 0302204_LIFE_ESCALATION_EVENT_MODEL
- 0302205_LIFE_THRESHOLD_MODEL
- 0302206_LIFE_CONDITION_ALERT_REASON_MODEL
- 0502202_LIFE_ALERT_GENERATION_FLOW
- 0502203_LIFE_ESCALATION_FLOW
- 0402202_LIFE_ALERT_RUNTIME
- 0402203_LIFE_ESCALATION_RUNTIME

## 5.1 owned tables

### life_threshold
required_fields:
- id
- user_id nullable for default rule
- domain_scope health|sleep|activity|finance|home|review|device
- metric_code
- threshold_type lower_bound|upper_bound|streak_limit|missing_data_limit|compound_rule
- threshold_value_json
- severity_on_breach
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_condition_alert_reason
required_fields:
- id
- domain_scope
- reason_code
- display_label
- explanation_template
- action_template nullable
- severity_default
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_risk_signal
required_fields:
- id
- user_id
- domain_scope
- metric_code
- observed_window_start_at
- observed_window_end_at
- observed_value_json
- triggered_threshold_id
- risk_severity
- confidence_score
- explanation_text
- signal_status open|cooling_down|resolved|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_alert
required_fields:
- id
- user_id
- source_risk_signal_id
- alert_reason_id
- risk_severity
- chosen_channel
- first_visible_at nullable
- acknowledged_at nullable
- alert_status queued|visible|acknowledged|resolved|suppressed|expired|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_escalation_event
required_fields:
- id
- user_id
- source_alert_id
- escalation_level user_repeat|household_notice|support_queue|admin_queue
- target_channel
- trigger_reason non_response|severity_rise|repeat_pattern|manual_override
- escalation_status queued|sent|cancelled|completed|failed
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

## 5.2 exact APIs

### PUT /v1/life/risk/thresholds/{id}
request_fields:
- idempotency_key
- domain_scope
- metric_code
- threshold_type
- threshold_value_json
- severity_on_breach
- active_flag
response:
- common write response

### POST /v1/life/risk/evaluate
request_fields:
- idempotency_key
- domain_scope
- source_fact_ref nullable
- target_window_start_at
- target_window_end_at
response:
- common write response
- resource_type: life_risk_signal

### POST /v1/life/alerts/{id}/acknowledge
request_fields:
- idempotency_key
response:
- common write response

### POST /v1/life/alerts/{id}/resolve
request_fields:
- idempotency_key
- resolution_note nullable
response:
- common write response

### GET /v1/life/alerts
query:
- alert_status nullable
- minimum_severity nullable
- from_timestamp nullable
- to_timestamp nullable

## 5.3 state machines

risk_signal_status_machine:
- open -> cooling_down
- open -> resolved
- open -> superseded
- cooling_down -> resolved
- cooling_down -> open
- resolved -> superseded

alert_status_machine:
- queued -> visible
- queued -> suppressed
- visible -> acknowledged
- visible -> resolved
- acknowledged -> resolved
- visible -> expired
- acknowledged -> superseded
- resolved -> superseded

escalation_status_machine:
- queued -> sent
- queued -> cancelled
- sent -> completed
- sent -> failed
- failed -> queued

## 5.4 emitted events
- life.risk_signal.created.v1
- life.risk_signal.resolved.v1
- life.risk_alert.created.v1
- life.risk_alert.acknowledged.v1
- life.escalation_event.sent.v1

consumed_events:
- life.device_sync.completed.v1
- life.checkin.completed.v1
- life.analytics.score.ready.v1
- life.assistant.decision.blocked.v1

## 5.5 hard guardrails
- no high or critical alert may be household-visible without explicit scope rule and user-consent basis
- suppressed alerts must retain suppress_reason_code and actor_type
- alert acknowledgement never resolves the underlying risk signal automatically
- critical alert resolution requires either explicit resolve action or a resolving evaluation run

## 5.6 UI stateflow
- Alert Center: queued hidden from user until visible -> open detail -> acknowledge -> resolve path
- Threshold Settings Screen: edit -> policy validation -> save -> evaluation preview
- Escalation Timeline Screen: show trigger reason, target channel, sent/completed/failed status

## 5.7 implementation ownership
- module.life-risk.threshold-command
- module.life-risk.evaluation-engine
- module.life-risk.alert-dispatch-job
- module.life-risk.escalation-job

## 5.8 acceptance
- a repeated evaluation on unchanged facts must not duplicate open risk signals for the same active threshold window
- alert suppression must write actor, reason, timestamp, and original severity
- escalation retries must be bounded and observable

# ============================================================
# 6. 221.LIFE-ANALYTICS
# ============================================================

purpose:
Fix the exact contract for pattern detection, trend summaries,
correlation outputs, scores, and recommendation explanations.

existing_model_alignment:
- 0302212_LIFE_PATTERN_MODEL
- 0302213_LIFE_TREND_SUMMARY_MODEL
- 0302214_LIFE_CORRELATION_MODEL
- 0302215_LIFE_SCORE_MODEL
- 0302216_LIFE_RECOMMENDATION_EXPLANATION_MODEL

## 6.1 owned tables

### life_pattern
required_fields:
- id
- user_id
- pattern_family routine|sleep|meal|activity|mood|budget|home_stock
- detection_window_start_date
- detection_window_end_date
- pattern_title
- pattern_summary_text
- confidence_score
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_trend_summary
required_fields:
- id
- user_id
- metric_code
- review_window_type
- window_start_date
- window_end_date
- direction_code rising|falling|stable|volatile
- summary_text
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_correlation
required_fields:
- id
- user_id
- left_metric_code
- right_metric_code
- window_start_date
- window_end_date
- correlation_strength_score
- explanation_text
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_score
required_fields:
- id
- user_id
- score_family consistency|recovery|budget_balance|home_stability|overall
- score_value
- score_band excellent|good|watch|attention
- score_window_start_date
- score_window_end_date
- explanation_text
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_recommendation_explanation
required_fields:
- id
- user_id
- source_recommendation_ref
- explanation_level
- explanation_text
- evidence_refs_json
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 6.2 exact APIs

### POST /v1/life/analytics/patterns/render
request_fields:
- idempotency_key
- pattern_family nullable
- window_start_date
- window_end_date
response:
- common write response

### POST /v1/life/analytics/scores/render
request_fields:
- idempotency_key
- score_family nullable
- window_start_date
- window_end_date
response:
- common write response

### GET /v1/life/analytics/overview
query:
- window_start_date
- window_end_date
response_fields:
- patterns
- trend_summaries
- scores
- active_recommendation_explanations

## 6.3 state machines

analytics_artifact_status_machine:
- queued -> rendering
- rendering -> ready
- rendering -> failed
- ready -> superseded
- failed -> queued

## 6.4 emitted events
- life.analytics.pattern.ready.v1
- life.analytics.score.ready.v1
- life.analytics.trend.ready.v1
- life.analytics.recommendation_ready.v1

consumed_events:
- life.daily_summary.ready.v1
- life.weekly_review.ready.v1
- life.risk_signal.created.v1
- life.memory_event.extracted.v1

## 6.5 analytics guardrails
- all analytics outputs must store evidence_refs_json or source counts sufficient for traceability
- correlation output is explanatory only and may not auto-create critical alerts without explicit risk rule evaluation
- score bands are user guidance signals, not diagnostic labels

## 6.6 UI stateflow
- Analytics Overview Screen: request window -> load projections -> cards by family -> drilldown explanation
- Recommendation Explanation Drawer: headline -> reasoning -> evidence refs count

## 6.7 implementation ownership
- module.life-analytics.feature-store
- module.life-analytics.render-job
- module.life-analytics.query-projection
- module.life-analytics.explanation-renderer

## 6.8 acceptance
- analytics rerender on same window supersedes previous ready artifacts without destructive overwrite
- every surfaced recommendation must have a stored explanation row
- no analytics card may expose raw class_p3 facts in household context

# ============================================================
# 7. 060.INTEGRATION EXACTNESS
# ============================================================

purpose:
Fix LifeOS cross-boundary event, sync, consent, and persona exchange contracts.

existing_model_alignment:
- 0300500001_LIFE_INTEGRATION_REF_MODEL
- 0300500002_LIFE_EVENT_OUTBOX_MODEL
- 0300500003_LIFE_PERSONA_GROWTH_REQUEST_MODEL
- 0300500004_LIFE_SYNC_EVENT_INBOX_MODEL
- 0302200_LIFE_PERSONA_USAGE_REQUEST_MODEL
- 0302201_LIFE_PERSONA_USAGE_RESULT_SYNC_MODEL
- 0302202_LIFE_PERSONA_TRUST_SYNC_MODEL
- 0302203_LIFE_INTERVENTION_REQUEST_MODEL
- 0302204_LIFE_RECOMMENDATION_RESULT_MODEL
- 0302205_LIFE_CONSENT_VISIBILITY_MODEL

## 7.1 owned tables

### life_integration_ref
required_fields:
- id
- user_id
- integration_provider_code
- external_subject_ref
- connection_status active|paused|revoked|error
- consent_visibility_scope private_only|selected_domains|household_shareable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_event_outbox
required_fields:
- id
- aggregate_type
- aggregate_id
- event_type
- event_version
- payload_json
- dispatch_status queued|dispatched|failed|dead_letter
- correlation_id
- created_at
- updated_at
privacy_class: class_p1_personal_standard

### life_sync_event_inbox
required_fields:
- id
- provider_code
- inbound_event_type
- inbound_event_ref
- payload_json
- consume_status queued|consumed|failed|dead_letter|ignored_duplicate
- correlation_id
- created_at
- updated_at
privacy_class: class_p1_personal_standard

### life_persona_usage_request
required_fields:
- id
- user_id
- persona_ref
- requested_scope growth|intervention|summary|trust_sync
- consent_visibility_id
- payload_ref
- request_status queued|sent|completed|failed|cancelled
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_persona_usage_result_sync
required_fields:
- id
- user_id
- request_id
- result_type recommendation|summary|trust_signal|intervention_result
- payload_json
- sync_status received|accepted|rejected|superseded
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_persona_trust_sync
required_fields:
- id
- user_id
- persona_ref
- trust_metric_code
- trust_value_json
- sync_timestamp
- sync_status accepted|blocked|superseded
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_intervention_request
required_fields:
- id
- user_id
- source_signal_ref
- target_persona_ref nullable
- requested_action_family
- explanation_level
- request_status queued|sent|completed|failed|cancelled
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_recommendation_result
required_fields:
- id
- user_id
- request_id nullable
- recommendation_family
- recommendation_payload_json
- result_status received|accepted|dismissed|expired|superseded
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_consent_visibility
required_fields:
- id
- user_id
- visibility_scope private_only|selected_domains|persona_only|household_shareable
- allowed_domain_json
- allowed_provider_json
- active_flag
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

## 7.2 integration envelope
All cross-boundary events must carry:
- event_id
- event_type
- event_version
- occurred_at
- producer_system life-os
- user_ref nullable when policy allows
- correlation_id
- trace_ref
- sensitivity_class
- payload_json

## 7.3 exact APIs

### POST /v1/life/integrations/{provider}/connect
request_fields:
- idempotency_key
- external_subject_ref
- consent_visibility_scope
response:
- common write response

### PUT /v1/life/consent-visibility/{id}
request_fields:
- idempotency_key
- visibility_scope
- allowed_domain_json
- allowed_provider_json
- active_flag
response:
- common write response

### POST /v1/life/persona/usage-requests
request_fields:
- idempotency_key
- persona_ref
- requested_scope
- consent_visibility_id
- payload_ref
response:
- common write response

### POST /v1/life/inbox/consume
request_fields:
- idempotency_key
- provider_code
- inbound_event_type
- inbound_event_ref
- payload_json
response:
- common write response

## 7.4 integration rules
- outbox dispatch is the only supported producer path
- inbox consume is idempotent on provider_code + inbound_event_ref
- consent must be checked both at request creation and again at dispatch time
- revoked consent blocks new dispatch but does not erase historical records
- persona trust sync may update current projections but must preserve prior trust rows

## 7.5 implementation ownership
- module.life-integration.outbox
- module.life-integration.inbox
- module.life-integration.consent-guard
- module.life-integration.persona-adapter

## 7.6 acceptance
- duplicate inbound events must collapse to ignored_duplicate without side effects
- revoked consent must prevent future persona usage requests from dispatching
- failed dispatch rows must be retryable without payload mutation

# ============================================================
# 8. 070.OPERATIONS EXACTNESS
# ============================================================

purpose:
Fix operational ownership, incident handling, manual recovery,
and bounded retry rules for LifeOS.

operational_owner_map:
- life-memory: journal and reflection support owner
- life-review: checkin and review support owner
- life-risk: alert and escalation support owner
- life-integration: sync and outbox owner
- platform-sre: queue, worker, and datastore health owner
- privacy-admin: consent and exposure incident owner

## 8.1 standard operation states
- normal
- degraded
- incident_open
- manual_recovery
- post_incident_review

## 8.2 allowed manual actions
- replay failed outbox message
- replay failed inbox consume after duplicate check
- mark alert dispatch failed -> queued for bounded retry
- trigger re-render of summary or analytics artifact
- suppress visible alert only with actor, reason, and audit note
- deactivate faulty threshold rule

## 8.3 forbidden manual actions
- direct deletion of journal, risk, alert, or consent rows
- direct mutation of generated payload_json in outbox or inbox history
- household-scope widening without a new consent row
- manual resolution of critical alert without audit note

## 8.4 retry rules
- outbox dispatch: exponential backoff, maximum 7 attempts, then dead_letter
- inbox consume: maximum 5 attempts, then dead_letter
- render jobs: maximum 3 attempts, then failed artifact status
- alert delivery: maximum 5 attempts per channel
- escalation delivery: maximum 3 attempts per escalation level

## 8.5 manual recovery path
1. identify failing unit from correlation_id and trace_ref
2. freeze new non-critical dispatch when incident_open
3. preserve evidence rows and extract payload snapshot
4. replay from outbox or rerender from source facts
5. verify downstream projections refreshed
6. close incident with operator note and linked audit refs

## 8.6 minimum observability signals
- outbox queue depth
- inbox queue depth
- render job failure count
- open alert count by severity
- escalation failure count
- blocked-by-policy intervention count
- supersede chain break count

## 8.7 acceptance
- every operation with manual recovery must specify actor and note
- dead-letter rows must remain queryable by support tooling
- post-incident replay must never create duplicate accepted business rows

# ============================================================
# 9. 080.POLICY EXACTNESS
# ============================================================

purpose:
Fix policy boundaries for sensitive-life handling, multilingual output,
household sharing, and recommendation safety.

## 9.1 policy set

### policy: sensitive_life_minimization
policy_statement:
Only the minimum necessary sensitive data may be shown in user-visible outputs.
permitted_action:
- show concise explanations referencing categories and time windows
blocked_action:
- expose raw class_p3 details in summary cards, notifications, or household feeds
escalation_threshold:
- any planned cross-scope exposure of class_p3 data

### policy: no_hidden_authority_claim
policy_statement:
LifeOS may support decisions but must not present itself as a licensed authority.
permitted_action:
- say a pattern or risk signal suggests attention
blocked_action:
- declare diagnosis, legal judgment, or final financial advice as system fact
escalation_threshold:
- any template attempting authoritative claim language

### policy: household_boundary_enforcement
policy_statement:
Private scope remains private unless an explicit consent visibility row allows a narrower permitted share.
permitted_action:
- share household-safe stock reminders derived from shared items
blocked_action:
- show private mood, health, or finance facts in household surface
escalation_threshold:
- any derived household recommendation sourced from private-only data

### policy: multilingual_output_consistency
policy_statement:
Generated multilingual outputs must preserve meaning and severity.
permitted_action:
- translate explanation text while preserving severity labels
blocked_action:
- downgrade or exaggerate severity across languages
escalation_threshold:
- severity mismatch detected between source and translated output

### policy: recommendation_explainability
policy_statement:
Every surfaced recommendation must have an explanation record and source trace.
permitted_action:
- concise headline with expandable reasoning
blocked_action:
- recommendation with no stored explanation_text or evidence refs
escalation_threshold:
- production surface finds recommendation without explanation row

## 9.2 enforcement points
- write-time policy guard for consent and scope
- dispatch-time policy guard for visibility and channel
- render-time policy guard for explanation and language integrity
- admin audit review for override and suppression actions

## 9.3 acceptance
- blocked policy actions must emit blocked_by_policy outcome, not silent failure
- translated critical alert text must preserve original severity label
- household feed projection must exclude private-only derived outputs by default

# ============================================================
# 10. 100.SECURITY EXACTNESS
# ============================================================

purpose:
Fix access control, privacy classes, audit integrity, and secret handling for LifeOS.

## 10.1 access control matrix

user_self:
- read own private, selected-domain, and household-safe projections
- write own commands within consent and policy boundary
- acknowledge or resolve own visible alerts

household_member:
- read only household-shareable projections
- no access to private journal, private checkin, private risk, private finance artifacts
- may act on shared household tasks and stock reminders only

support_operator:
- read operational metadata, queue state, correlation_id, error summaries
- no raw class_p3 payload access by default
- temporary elevated view requires break-glass audit and approval

privacy_admin:
- review consent, visibility, suppression, and exposure incidents
- no content editing rights on business rows

system_worker:
- least-privilege service account per module
- access only required tables and queues

## 10.2 storage classes
- class_p0_public_copy_safe: normal encrypted storage
- class_p1_personal_standard: encrypted at rest, normal query access
- class_p2_sensitive_life: encrypted at rest, masked in most support tools
- class_p3_highly_sensitive_masked: encrypted at rest, masked by default, restricted column access, redacted notification payloads

## 10.3 audit integrity rules
- every write command stores actor_type, actor_ref, idempotency_key, correlation_id
- every privilege-elevated read stores reason_code and session_ref
- every suppression, override, and consent change stores before and after snapshot refs
- audit rows are append-only and immutable from app-layer APIs

## 10.4 secret and key rules
- provider credentials stored in secret manager only
- no provider tokens in business tables except opaque references
- notification channel secrets scoped per environment and rotated

## 10.5 notification security rules
- push payloads for high/critical alerts must be redacted headline-only by default
- email or sms escalation may include only approved safe text templates
- deep links must enforce re-auth for class_p3 content

## 10.6 acceptance
- support tooling must redact class_p3 fields by default
- break-glass access must generate explicit audit event
- compromised provider token rotation must not require mutation of historical rows

# ============================================================
# 11. 110.INFRASTRUCTURE EXACTNESS
# ============================================================

purpose:
Fix runtime placement, queue topology, storage layout,
and monitoring boundaries for LifeOS.

## 11.1 runtime topology
api_units:
- life-api-command
- life-api-query

worker_units:
- life-outbox-dispatch-worker
- life-inbox-consume-worker
- life-memory-render-worker
- life-review-render-worker
- life-risk-evaluation-worker
- life-alert-dispatch-worker
- life-escalation-worker
- life-analytics-render-worker

scheduled_units:
- daily-summary-scheduler
- weekly-review-scheduler
- threshold-evaluation-scheduler
- stale-alert-expiry-scheduler
- dead-letter-reconciliation-scheduler

## 11.2 queue topology
- queue.life.outbox.dispatch
- queue.life.inbox.consume
- queue.life.render.memory
- queue.life.render.review
- queue.life.risk.evaluate
- queue.life.alert.dispatch
- queue.life.escalation.dispatch
- queue.life.analytics.render
- queue.life.dead_letter.reprocess

## 11.3 datastore layout
primary_relational_store:
- all business rows
- all audit rows
- outbox and inbox history

projection_store:
- dashboard latest snapshot
- alert center projections
- analytics overview projections
- household-safe feed projections

object_storage:
- imported raw attachment refs only
- render artifact snapshots when needed
- never primary source of truth for structured business state

## 11.4 infra guardrails
- outbox and inbox workers must be horizontally scalable and idempotent
- queue consumers must use visibility timeout longer than max handler time
- projections may be rebuilt from primary rows and are never sole source of truth
- dead-letter queues retained long enough for incident analysis and replay

## 11.5 monitoring signals
- p95 command latency by endpoint
- queue lag by queue name
- worker success/failure rate
- dead-letter growth rate
- alert dispatch latency by severity and channel
- summary/render freshness lag
- projection rebuild duration

## 11.6 capacity planning rules
- critical alert path receives reserved worker concurrency
- analytics rendering must never starve alert or risk queues
- daily and weekly review batch runs must support per-user sharding

## 11.7 backup and recovery
- relational store point-in-time recovery enabled
- projection store rebuildable from source tables
- object storage versioning enabled for retained artifacts
- disaster recovery runbook must include outbox replay order and consent consistency verification

## 11.8 acceptance
- alert queue saturation must not block command writes
- projection store loss must be recoverable without business-row loss
- replay after restore must preserve idempotency and not re-open resolved alerts incorrectly

# ============================================================
# 12. PASS-3 COMPLETION JUDGMENT
# ============================================================

what_is_now_fixed:
- memory and reflection exact contracts
- assistant orchestration exact contracts
- daily checkin and review exact contracts
- risk and alert exact contracts
- analytics exact contracts
- integration and consent exact contracts
- operations, policy, security, and infrastructure exactness baseline

what_is_still_remaining_for_full_implementation_ready_completion:
- 090.interface normalization to exact request/response and screen-state detail for all remaining UI files
- 120.implementation mapping completion to repository/module/test path granularity
- 130.development exact acceptance and release sequencing completion
- final status normalization and integrated rebuilt regeneration

honest_position:
Pass 3 materially reduces the remaining uncertainty.
After pass 1 to pass 3, LifeOS is no longer blocked by conceptual ambiguity in its core runtime or governance layers.
The main remaining work is final normalization and implementation-folder completion, not rethinking the design itself.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY PASS 4
# INTERFACE, IMPLEMENTATION, DEVELOPMENT, AND FINALIZATION
# ============================================================

status: pass-4-master-design
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-16
purpose:
Freeze the remaining LifeOS implementation-ready contracts for interface exactness,
implementation folder completion, development acceptance completion,
and final status normalization.

# ============================================================
# 0. ROADMAP
# ============================================================

overall_goal:
Move LifeOS from expanded integrated design to implementation-ready design.

full_completion_roadmap:
- pass_1 baseline fixed
- pass_2 domain data and flow exactness fixed
- pass_3 review, intelligence, integration, operations, policy, security, infrastructure exactness fixed
- pass_4 interface normalization, implementation mapping, development completion, finalization fixed by this document

current_position:
- pass_1: done
- pass_2: done
- pass_3: done
- pass_4: fixed by this document

pass_4_scope:
- 090.interface exactness normalization
- 120.implementation folder completion
- 130.development acceptance completion
- final status normalization policy
- integrated rebuilt regeneration rule

pass_4_exit_condition:
Every remaining non-final area has all of the following fixed:
- screen inventory and screen ownership
- route map and navigation rule
- screen state and stateflow rule
- exact request and response contract bindings
- implementation module, repository, DTO, job, and mapper ownership
- build order and test acceptance gates
- status normalization rule from draft/canonical-draft to canonical
- integrated rebuild and release decision rule

# ============================================================
# 1. SHARED PASS-4 EXACTNESS RULES
# ============================================================

## 1.1 single source of truth rule
- screen behavior truth lives in 090.interface
- endpoint payload truth lives in interface contract files and inherited pass 2 / pass 3 contracts
- table ownership truth lives in model and implementation mapping
- release gate truth lives in 130.development

No later file may redefine an exact payload or state machine differently.
If refinement is needed, it must supersede the prior contract with versioned change notes.

## 1.2 interface normalization rule
Every user-facing or operator-facing screen must have:
- route_id
- screen purpose
- actor
- required authority
- data dependencies
- entry states
- loading state
- empty state
- success state
- recoverable error state
- blocking error state
- offline behavior
- emitted commands
- listened events
- analytics markers

## 1.3 implementation normalization rule
Every implementation-owned file must bind exactly one of:
- feature module
- domain service
- repository
- DTO mapper
- event publisher
- event consumer
- scheduled job
- policy guard
- UI state reducer
- test fixture or test suite

## 1.4 development normalization rule
Every releaseable feature must have:
- migration path
- seed path if needed
- mock path
- contract tests
- repository tests
- stateflow tests
- error-path tests
- observability checks
- rollback or feature-flag path

## 1.5 finalization honesty rule
Completion of pass 4 means the implementation-ready parent design is fixed.
It does not automatically mean every legacy draft file has already been physically rewritten.
Legacy files must still be normalized against this frozen contract set.

# ============================================================
# 2. 090.INTERFACE EXACTNESS NORMALIZATION
# ============================================================

purpose:
Freeze the exact user and operator interface structure for LifeOS.

interface_principles:
- personal data first, but never cluttered
- record fast, review clearly, correct safely
- sensitive interpretation must stay explainable
- alerts must be visible but not panic-inducing
- household boundaries must be explicit at every share surface
- any async generation must expose queued and ready states

## 2.1 route map

### top-level routes
- /life/home
- /life/checkin/today
- /life/schedule
- /life/tasks
- /life/goals
- /life/health
- /life/meals
- /life/sleep
- /life/activity
- /life/home-stock
- /life/finance
- /life/journal
- /life/review/daily
- /life/review/weekly
- /life/insights
- /life/alerts
- /life/devices
- /life/household
- /life/settings

### operator routes
- /life-admin/alert-ops
- /life-admin/integration-ops
- /life-admin/policy-review
- /life-admin/job-monitor
- /life-admin/audit-trace

## 2.2 core user screens

### life_home_dashboard_screen
route_id: /life/home
purpose:
Single entry screen showing today's priorities, schedule highlights,
critical reminders, latest health/meal/sleep/activity summary cards,
pending device sync issues, and review prompts.
actor: end_user
required_authority: authenticated_user

data_dependencies:
- GET /v1/life/dashboard/home
- GET /v1/life/recommendations?surface=home
- GET /v1/life/alerts?status=open
- GET /v1/life/review/prompts/today

entry_states:
- first_open_no_profile
- normal_open
- offline_cached_open

loading_state:
- show dashboard skeleton blocks
- keep last safe cached cards if available

empty_state:
- show guided setup cards for profile, routine, and first check-in

success_state_sections:
- today summary
- next schedule items
- reminder strip
- health summary card
- meal summary card
- sleep summary card
- activity summary card
- alerts card
- review prompt card

recoverable_error_state:
- partial card fallback with per-card retry

blocking_error_state:
- only for auth/session invalid

offline_behavior:
- allow cached read
- block non-idempotent submit actions

emitted_commands:
- create_checkin
- open_task
- mark_reminder_done
- open_alert_detail
- open_review

analytics_markers:
- life_home_open
- life_home_card_tap
- life_home_retry_tap

### daily_checkin_screen
route_id: /life/checkin/today
purpose:
Fast daily capture of condition, mood, energy, pain, hydration,
and free-text note with optional recommendation preview.
actor: end_user
required_authority: authenticated_user

data_dependencies:
- GET /v1/life/checkin/today
- POST /v1/life/checkin
- GET /v1/life/recommendations?surface=post_checkin

entry_states:
- fresh_checkin
- draft_exists
- already_submitted_today

loading_state:
- load latest draft or existing check-in

empty_state:
- not applicable

success_state:
- input form with save-draft and submit
- recommendation preview area after submit

recoverable_error_state:
- field-level validation errors
- save-draft retry

blocking_error_state:
- only if policy block or session invalid

offline_behavior:
- local draft allowed
- submit queued only if offline queue enabled; otherwise block submit

emitted_commands:
- save_checkin_draft
- submit_checkin
- dismiss_recommendation
- open_explanation

analytics_markers:
- daily_checkin_open
- daily_checkin_submit
- daily_checkin_submit_error

### life_schedule_screen
route_id: /life/schedule
purpose:
Calendar and timeline view for appointments, routines, review blocks, and reminders.
actor: end_user
required_authority: authenticated_user

data_dependencies:
- GET /v1/life/schedule?from=...&to=...
- POST /v1/life/schedule
- PATCH /v1/life/schedule/{id}
- POST /v1/life/routines

states:
- day_view
- week_view
- month_summary_view
- edit_modal_open
- conflict_warning

commands:
- create_schedule_record
- update_schedule_record
- create_routine
- skip_routine_instance

### life_tasks_goals_screen
route_id: /life/tasks
purpose:
Combined task and goal view with filters, progress summary, and due-state triage.
actor: end_user
required_authority: authenticated_user

data_dependencies:
- GET /v1/life/tasks
- POST /v1/life/tasks
- PATCH /v1/life/tasks/{id}
- GET /v1/life/goals
- POST /v1/life/goals
- PATCH /v1/life/goals/{id}

states:
- list_ready
- filtered_list
- empty_list
- create_sheet_open
- completion_confetti_optional

commands:
- create_task
- complete_task
- reopen_task
- create_goal
- archive_goal

### life_health_screen
route_id: /life/health
purpose:
Health condition logging, correction, safe trend view, and explanation display.
actor: end_user
required_authority: authenticated_user

data_dependencies:
- GET /v1/life/health/records
- POST /v1/life/health/records
- POST /v1/life/health/records/{id}/corrections
- GET /v1/life/health/trends
- GET /v1/life/alerts?domain=health

states:
- secure_masked_default
- record_list_ready
- record_detail_open
- correction_sheet_open
- explanation_panel_open

commands:
- record_health_fact
- correct_health_fact
- open_health_alert

special_rules:
- default list hides highly sensitive values until explicit reveal
- explanation is required for any risk-driven highlight

### life_meals_screen
route_id: /life/meals
purpose:
Meal logging, nutrition summary, streaks, and import/device-linked nutrition entries.
actor: end_user
required_authority: authenticated_user

### life_sleep_screen
route_id: /life/sleep
purpose:
Sleep log capture, sleep trend display, and external device sync state.
actor: end_user
required_authority: authenticated_user

### life_activity_screen
route_id: /life/activity
purpose:
Exercise/activity entry, streaks, session details, and device import status.
actor: end_user
required_authority: authenticated_user

### life_home_stock_screen
route_id: /life/home-stock
purpose:
Consumable inventory, low-stock warnings, restock suggestions, and household scope controls.
actor: end_user
required_authority: authenticated_user

### life_finance_screen
route_id: /life/finance
purpose:
Personal-light finance summary with transactions, budgets, recurring items,
and careful privacy defaults.
actor: end_user
required_authority: authenticated_user
special_rules:
- financial details masked by default on shared-device risk indicators
- no household sharing without explicit visibility change

### life_journal_screen
route_id: /life/journal
purpose:
Journal entry capture, memory extraction preview, and retrospective browsing.
actor: end_user
required_authority: authenticated_user

### life_review_screen_daily
route_id: /life/review/daily
purpose:
Daily review artifact view, explainable summary, and recommendation actions.
actor: end_user
required_authority: authenticated_user

### life_review_screen_weekly
route_id: /life/review/weekly
purpose:
Weekly summary, patterns, wins, misses, and suggestion acceptance workflow.
actor: end_user
required_authority: authenticated_user

### life_insights_screen
route_id: /life/insights
purpose:
Explainable analytics, pattern trends, superseded summary tracking, and insight filters.
actor: end_user
required_authority: authenticated_user

### life_alerts_screen
route_id: /life/alerts
purpose:
Open, acknowledged, snoozed, and resolved alerts with explicit reason display.
actor: end_user
required_authority: authenticated_user

### life_devices_screen
route_id: /life/devices
purpose:
External device connections, sync health, permission state, and import issue recovery.
actor: end_user
required_authority: authenticated_user

### life_household_boundary_screen
route_id: /life/household
purpose:
Household membership, visibility boundaries, shareable item configuration,
and explicit personal/private warnings.
actor: end_user
required_authority: authenticated_user

### life_settings_screen
route_id: /life/settings
purpose:
Preferences, timezone, language, privacy defaults, reminder channels,
and export/delete entry points.
actor: end_user
required_authority: authenticated_user

## 2.3 operator screens

### life_admin_alert_ops_screen
route_id: /life-admin/alert-ops
purpose:
Operational visibility for alert delivery failures, stuck high-severity alerts,
and escalation queue handling.
actor: support_operator
required_authority: life_ops_alert_admin

### life_admin_integration_ops_screen
route_id: /life-admin/integration-ops
purpose:
View connector status, import failures, rate limit issues, retry queues, and dead-letter items.
actor: support_operator
required_authority: life_ops_integration_admin

### life_admin_policy_review_screen
route_id: /life-admin/policy-review
purpose:
Review policy-blocked recommendations, sensitive share attempts,
and exception requests.
actor: policy_operator
required_authority: life_policy_admin

### life_admin_job_monitor_screen
route_id: /life-admin/job-monitor
purpose:
Queue lag, scheduled jobs, failed jobs, recovery actions, and observability pivots.
actor: ops_engineer
required_authority: life_infra_ops

### life_admin_audit_trace_screen
route_id: /life-admin/audit-trace
purpose:
Read-only trace linking user action, API request, audit row, outbox event,
consumer execution, and resulting artifact.
actor: ops_engineer
required_authority: life_audit_reader

## 2.4 shared UI state model

screen_state_enums:
- initial
- loading
- ready
- empty
- partial_ready
- validation_error
- recoverable_error
- blocking_error
- submitting
- accepted
- queued
- stale_cached

ui_event_rules:
- every submit must surface submitting -> accepted|validation_error|recoverable_error|blocking_error
- every async render must surface queued -> ready|failed
- every superseded artifact must show a superseded badge and a link to latest
- every policy block must show human-readable reason and next valid path

## 2.5 navigation rules
- health, finance, journal, and alerts routes must preserve back stack safely
- sensitive detail deep-links require fresh auth if app lock is enabled
- review artifacts opened from notification must land on explanation-visible mode
- household share configuration must always pass through boundary confirmation modal

# ============================================================
# 3. 120.IMPLEMENTATION FOLDER COMPLETION
# ============================================================

purpose:
Freeze the implementation folder contract so developers can map design to code without ambiguity.

## 3.1 canonical implementation tree

```text
life-os/
  app/
    shell/
    navigation/
    auth/
    settings/
  features/
    home_dashboard/
    daily_checkin/
    schedule/
    tasks/
    goals/
    health/
    meals/
    sleep/
    activity/
    home_stock/
    finance/
    journal/
    review/
    insights/
    alerts/
    devices/
    household/
  domain/
    life_core/
    health_condition/
    meal_nutrition/
    sleep_recovery/
    activity_exercise/
    home_and_living/
    personal_finance_lite/
    memory_life_log/
    assistant_orchestration/
    daily_checkin_review/
    risk_and_alert/
    life_analytics/
    external_device_sensor/
    family_household_boundary/
  data/
    dto/
    repository/
    local_store/
    remote_api/
    sync/
    events/
    jobs/
  policy/
    guards/
    privacy/
    boundary/
  ops/
    observability/
    audit/
    admin_tools/
  tests/
    contract/
    repository/
    stateflow/
    integration/
    regression/
```

## 3.2 feature module ownership

### features/home_dashboard
owns:
- home dashboard UI
- dashboard UI reducer/state holder
- card composition logic
consumes:
- dashboard query service
- recommendation read service
- alert summary service

### features/daily_checkin
owns:
- daily check-in screen
- draft local state
- submit action binding
consumes:
- check-in command service
- recommendation preview query
- policy explanation presenter

### features/health
owns:
- health list screen
- health detail sheet
- correction modal
- masked-value reveal behavior
consumes:
- health repository
- health trend query service
- alert service

### features/review
owns:
- daily review screen
- weekly review screen
- recommendation action bar
- superseded artifact banner
consumes:
- review artifact repository
- recommendation command service
- explanation rendering service

### features/alerts
owns:
- alert list/detail screens
- acknowledge/snooze/resolve commands
consumes:
- alert repository
- risk explanation query

## 3.3 domain service ownership

### domain/life_core
services:
- schedule_command_service
- routine_engine_service
- task_goal_service
- reminder_service

### domain/health_condition
services:
- health_fact_command_service
- health_correction_service
- health_trend_service

### domain/meal_nutrition
services:
- meal_fact_command_service
- nutrition_aggregate_service

### domain/sleep_recovery
services:
- sleep_fact_command_service
- sleep_sync_merge_service

### domain/activity_exercise
services:
- activity_fact_command_service
- activity_streak_service

### domain/home_and_living
services:
- stock_item_service
- restock_signal_service

### domain/personal_finance_lite
services:
- finance_transaction_service
- budget_status_service
- recurring_item_service

### domain/memory_life_log
services:
- journal_entry_service
- memory_extraction_service
- reflection_render_service

### domain/assistant_orchestration
services:
- recommendation_generation_service
- recommendation_disposition_service
- explanation_service

### domain/daily_checkin_review
services:
- daily_checkin_service
- review_window_render_service

### domain/risk_and_alert
services:
- risk_signal_evaluator
- alert_dispatch_service
- alert_state_service

### domain/life_analytics
services:
- metric_compute_service
- insight_render_service

### domain/external_device_sensor
services:
- device_connection_service
- import_merge_service
- device_sync_health_service

### domain/family_household_boundary
services:
- household_boundary_service
- household_visibility_guard
- shared_item_projection_service

## 3.4 repository ownership

repository_contracts:
- one repository per aggregate or query surface
- repositories may not contain UI formatting logic
- repositories may not silently write cross-domain tables
- repositories returning sensitive data must support masked and unmasked projections where required

required_repositories:
- life_profile_repository
- schedule_repository
- routine_repository
- task_repository
- goal_repository
- reminder_repository
- health_record_repository
- meal_record_repository
- sleep_record_repository
- activity_record_repository
- stock_item_repository
- finance_repository
- journal_repository
- memory_event_repository
- review_artifact_repository
- recommendation_repository
- alert_repository
- analytics_repository
- device_connection_repository
- household_boundary_repository
- audit_trace_repository

## 3.5 DTO mapping rule
- request DTOs match interface contract exactly
- response DTOs match interface contract exactly
- DB models remain separate from API DTOs
- mappers must be explicit, not reflection-driven magic
- any masked response must be produced by dedicated mapper code, not ad hoc UI hiding

## 3.6 job ownership
required_jobs:
- daily_review_render_job
- weekly_review_render_job
- recommendation_generation_job
- risk_evaluation_job
- alert_delivery_job
- device_sync_pull_job
- import_merge_job
- analytics_refresh_job
- outbox_dispatch_job
- dead_letter_replay_job
- audit_retention_job

job_rules:
- jobs are idempotent by business key
- jobs emit structured progress and terminal outcome logs
- failed jobs write failure_reason_code and retry_count
- operator-visible jobs expose last_attempt_at and next_attempt_at

## 3.7 policy guard placement
required_guards:
- private_boundary_guard
- household_share_guard
- high_sensitivity_render_guard
- recommendation_action_guard
- connector_permission_guard
- deletion_export_guard

## 3.8 test target mapping
Every feature module must declare:
- contract tests
- reducer/state tests
- repository tests
- happy-path integration tests
- failure-path integration tests
- accessibility checks where UI exists

# ============================================================
# 4. 130.DEVELOPMENT ACCEPTANCE COMPLETION
# ============================================================

purpose:
Freeze build order, migration order, test gates, mock strategy,
and release acceptance so implementation can begin without undefined prerequisites.

## 4.1 build order
phase_a_foundations:
- auth/session shell
- route skeleton
- base observability
- audit infrastructure
- outbox infrastructure

phase_b_core_domains:
- life_core
- daily_checkin
- health_condition
- meals
- sleep
- activity

phase_c_extended_domains:
- home_stock
- finance_lite
- journal
- devices
- household_boundary

phase_d_review_and_intelligence:
- daily_review
- weekly_review
- recommendations
- insights
- alerts

phase_e_operator_and_hardening:
- admin routes
- retry/dead-letter tools
- policy review surfaces
- performance hardening
- security hardening

## 4.2 migration order
- shared audit/outbox tables
- life_core tables
- domain fact tables
- derived summary tables
- recommendation tables
- alert tables
- analytics tables
- device connector tables
- household boundary tables
- admin/ops support tables

migration_rules:
- additive first; destructive migration prohibited in initial rollout path
- backfill jobs must be separately versioned
- every migration must include rollback note even if schema rollback is manual-only

## 4.3 mock strategy
required_mocks:
- home dashboard aggregate response
- check-in submit accepted and validation error responses
- health masked and unmasked record projections
- recommendation queued and ready states
- alert high-severity explanation payload
- device sync success/failure sequences
- household boundary block response

mock_rules:
- mocks must conform exactly to request/response contracts
- UI may not invent fields absent from contract

## 4.4 mandatory contract test list
- POST /v1/life/checkin
- POST /v1/life/health/records
- POST /v1/life/health/records/{id}/corrections
- POST /v1/life/meals/records
- POST /v1/life/sleep/records
- POST /v1/life/activity/records
- POST /v1/life/home-stock/items
- POST /v1/life/finance/transactions
- POST /v1/life/journal/entries
- POST /v1/life/recommendations/{id}/disposition
- POST /v1/life/alerts/{id}/acknowledge
- POST /v1/life/devices/connections
- POST /v1/life/household/visibility-rules

## 4.5 mandatory integration test list
- create daily check-in -> recommendation generation -> review artifact update
- record health fact -> risk evaluation -> alert creation -> alert acknowledgment
- record meal -> nutrition summary refresh -> dashboard card refresh
- device import -> merge -> derived summary refresh -> dashboard refresh
- journal submit -> memory extraction -> reflection summary render
- shared item boundary change -> household projection refresh
- alert delivery failure -> retry -> operator visibility
- policy-blocked recommendation action -> explanation visible -> no downstream mutation

## 4.6 mandatory regression focus
- no silent overwrite of sensitive output
- no cross-user or cross-household leakage
- masked projection remains masked unless authority and explicit reveal exist
- idempotent submit remains single-write under retry
- superseded summaries remain traceable
- outbox/inbox trace remains linkable end-to-end
- offline cached state never masquerades as fresh write success

## 4.7 release gates
release_gate_1_contract:
- all mandatory contract tests green
- no undocumented response fields
- no undocumented error codes

release_gate_2_stateflow:
- all primary user flows have happy path and recoverable error path covered
- all async flows surface queued and failure states correctly

release_gate_3_security:
- privacy boundary tests green
- sensitive masking tests green
- audit trail completeness verified

release_gate_4_ops:
- queue lag dashboards working
- dead-letter inspection working
- alert retry path working
- operator screens readable with seeded failures

release_gate_5_acceptance:
- dashboard, check-in, review, alert, and device flows demonstrated end-to-end
- no p0 or p1 open defects

# ============================================================
# 5. FINAL STATUS NORMALIZATION RULE
# ============================================================

purpose:
Define how remaining LifeOS draft and canonical-draft files become canonical under the frozen pass 1-4 contracts.

## 5.1 allowed status transitions
- draft -> canonical-draft
- canonical-draft -> canonical
- draft -> canonical only when all required exactness sections are present and reviewed

## 5.2 canonicalization checklist
A file may become canonical only if:
- it has explicit scope and owner
- it binds to the correct module/domain/route/table/API group
- it contains all layer completion sections defined in pass 1
- it does not contradict pass 2, pass 3, or pass 4 contracts
- examples and enums match the frozen contract vocabulary
- no placeholder terms remain such as TBD, maybe, consider, candidate unless intentionally retained in non-normative note blocks

## 5.3 contradiction rule
If a legacy file contradicts the frozen passes:
- frozen pass contract wins
- legacy file must be updated, not re-argued locally
- contradiction note should be recorded in diff summary when performing file rewrite

## 5.4 normalization order
- 090.interface files first
- 120.implementation files second
- 130.development files third
- remaining architecture/model/runtime/flow files that still contain outdated wording fourth
- integrated rebuilt file last

# ============================================================
# 6. INTEGRATED REBUILT REGENERATION RULE
# ============================================================

purpose:
Define the exact condition under which a new integrated LifeOS rebuilt document may be emitted as the current canonical integrated baseline.

preconditions:
- pass 1 through pass 4 frozen
- contradictory legacy files normalized
- status transitions applied to rewritten files
- index and overview pointers updated

regeneration_requirements:
- include all canonical files only, or clearly separate canonical and canonical-draft segments if transition batch is incomplete
- emit summary counts by status
- emit missing check summary
- emit contradiction resolution summary
- emit module coverage summary
- emit interface route coverage summary
- emit API contract coverage summary

release_decision_rule:
- if any implementation-critical file remains contradictory, do not call the rebuild fully canonical
- if implementation-critical files are aligned but some non-critical narrative files remain draft, rebuild may be emitted as implementation-ready integrated baseline with explicit caveat

# ============================================================
# 7. HONEST FINISH POSITION
# ============================================================

What is complete after pass 4:
- the implementation-ready parent design for LifeOS is now fixed across passes 1 to 4
- developers have a frozen target for modules, routes, APIs, events, jobs, and release gates
- canonicalization criteria for remaining legacy files are now explicit

What is still not automatically complete:
- physical rewrite of every existing legacy draft file
- regeneration of the final integrated canonical rebuilt document after all legacy rewrites
- Termux generation blocks for repository file creation, which should happen after Boss confirms the design set

# ============================================================
# 8. NEXT EXECUTION BUNDLE AFTER REVIEW
# ============================================================

after_boss_review_bundle:
- rewrite legacy 090.interface files to canonical
- rewrite legacy 120.implementation files to canonical
- rewrite legacy 130.development files to canonical
- regenerate integrated LifeOS rebuilt document
- only after that, generate Termux one-block creation scripts

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md -->
# ============================================================
# LIFE OS IMPLEMENTATION-READY COMPLETION SUMMARY
# ============================================================

status: implementation-ready-parent-design-fixed
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-16
purpose:
Summarize the completion position of the four-pass LifeOS implementation-ready design freeze.

completion_position:
- pass_1: completed
- pass_2: completed
- pass_3: completed
- pass_4: completed

meaning_of_completed_here:
The implementation-ready parent design is fixed.
This means the target contracts for domain boundaries, tables, APIs, events,
state machines, screens, implementation modules, jobs, and release gates are now frozen.

what_is_ready_now:
- implementation-ready baseline definition
- exact major domain data and flow contracts
- exact review, intelligence, ops, security, and infrastructure contracts
- exact interface, implementation, development, and finalization rules
- canonicalization rules for remaining legacy files

what_is_not_yet_physically_done:
- rewriting every legacy draft file under the new frozen rules
- regenerating the final integrated rebuilt file after all rewrites
- generating the Termux file-creation bundle after final confirmation

recommended_next_step_after_review:
Normalize the legacy LifeOS files against passes 1 to 4,
then emit a new integrated rebuilt LifeOS canonical baseline,
and only after that generate the Termux one-block output bundle.

file_set:
- LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN_20260416.md
- LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW_20260416.md
- LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS_20260416.md
- LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION_20260416.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/04.life-os/920.meta/925.implementation-ready-freeze/925190_LIFE_OS_IMPLEMENTATION_READY_COMPLETION_SUMMARY.md -->
