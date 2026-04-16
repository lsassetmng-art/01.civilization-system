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
