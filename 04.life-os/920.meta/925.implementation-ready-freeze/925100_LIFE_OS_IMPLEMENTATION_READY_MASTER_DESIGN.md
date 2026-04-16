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

