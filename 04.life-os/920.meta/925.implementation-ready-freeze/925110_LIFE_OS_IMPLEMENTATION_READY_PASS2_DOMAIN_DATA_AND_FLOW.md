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
