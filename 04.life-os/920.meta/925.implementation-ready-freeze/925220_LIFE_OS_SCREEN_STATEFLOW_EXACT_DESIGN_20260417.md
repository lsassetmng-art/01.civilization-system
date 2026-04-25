# ============================================================
# LIFE OS SCREEN-STATEFLOW EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
document_type: screen-stateflow-exact-design
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17
depends_on:
- 925200_LIFE_OS_CORE_DB_EXACT_DESIGN_20260417.md
- 925210_LIFE_OS_API_EXACT_PAYLOAD_DESIGN_20260417.md

purpose:
- Fix the exact screen structure and stateflow of LifeOS before implementation.
- Define route-level responsibilities, UI states, transitions, and API bindings.
- Keep write behavior append-first and correction-safe.
- Ensure current-state screens are projection-driven and fact logging screens are append-driven.

implementation_boundary:
- This document is design only.
- No application implementation is executed from this document.
- No database DDL is executed from this document.

design_principles:
- append-first for all new life facts
- idempotency required for all write actions
- no in-place overwrite of canonical fact records from user screens
- dashboard and summaries are read models, not canonical fact stores
- review/correction flows create follow-up records rather than mutating history
- sync and integration screens expose job/result state but do not embed DB logic

route_namespace:
- /life
- /life/dashboard
- /life/habits
- /life/habits/log
- /life/health
- /life/health/log
- /life/goals
- /life/goals/create
- /life/checkin
- /life/timeline
- /life/review
- /life/integrations
- /life/sync
- /life/settings

navigation_model:
- bottom_nav:
  - dashboard
  - habits
  - health
  - review
  - settings
- quick_actions:
  - log habit
  - log health metric
  - create goal event
  - start daily check-in
- secondary_navigation:
  - timeline
  - integrations
  - sync status
- modal_patterns:
  - confirm_submit
  - idempotency_retry_notice
  - validation_detail
  - network_error_detail
  - correction_explanation
  - integration_pull_summary

shared_screen_contract:
  route_params:
  - tenant_id
  - persona_id
  - device_id
  auth_context:
  - session_id
  - actor_type=user
  - actor_id
  request_headers:
  - x-request-id
  - x-idempotency-key for write calls
  - x-device-timezone
  - authorization
  common_ui_blocks:
  - screen_header
  - persona_display
  - background_display
  - primary_content
  - inline_feedback
  - action_bar
  - sync_badge
  common_view_states:
  - loading
  - empty
  - ready
  - submitting
  - success
  - validation_error
  - network_error
  - permission_error
  - stale_projection_warning

screen_state_rules:
  loading:
  - used when first fetch is pending
  - skeleton or placeholder only
  empty:
  - used when fetch succeeded but no displayable records exist
  ready:
  - used when screen is interactive
  submitting:
  - disable duplicate write actions
  - keep local draft visible
  success:
  - show success banner or success inline state
  validation_error:
  - keep draft inputs and attach field-level message
  network_error:
  - keep draft inputs and surface retry
  permission_error:
  - block actions and show permission note
  stale_projection_warning:
  - read model may lag write submission; user can refresh

# ------------------------------------------------------------
# ROUTE 1: DASHBOARD
# ------------------------------------------------------------

screen:
  screen_code: life_dashboard
  route: /life/dashboard
  purpose:
  - show current overview of habits, health, goal events, review, and sync alerts
  primary_data_sources:
  - GET /api/life/v1/dashboard
  - GET /api/life/v1/review/summary
  - GET /api/life/v1/sync/status
  write_actions:
  - none directly on initial dashboard
  child_actions:
  - open habit quick log
  - open health quick log
  - open daily check-in
  - open goal create
  - open review center
  - open sync center

dashboard_view_model:
- today_habit_summary
- latest_health_snapshot
- active_goal_summary
- due_review_summary
- integration_sync_summary
- important_alert_strip

dashboard_states:
- dashboard.initial_loading
- dashboard.empty_ready
- dashboard.ready
- dashboard.refreshing
- dashboard.stale_projection_warning
- dashboard.network_error

dashboard_transitions:
- dashboard.initial_loading -> dashboard.ready
  trigger: dashboard_fetch_succeeded_with_data
- dashboard.initial_loading -> dashboard.empty_ready
  trigger: dashboard_fetch_succeeded_without_cards
- dashboard.initial_loading -> dashboard.network_error
  trigger: dashboard_fetch_failed
- dashboard.ready -> dashboard.refreshing
  trigger: pull_to_refresh
- dashboard.refreshing -> dashboard.ready
  trigger: refresh_succeeded
- dashboard.refreshing -> dashboard.stale_projection_warning
  trigger: refresh_succeeded_with_projection_delay
- dashboard.refreshing -> dashboard.network_error
  trigger: refresh_failed
- dashboard.stale_projection_warning -> dashboard.refreshing
  trigger: user_tap_refresh_again

dashboard_action_binding:
- tap quick_log_habit -> route /life/habits/log
- tap quick_log_health -> route /life/health/log
- tap start_checkin -> route /life/checkin
- tap create_goal -> route /life/goals/create
- tap review_summary -> route /life/review
- tap sync_summary -> route /life/sync
- tap latest_event -> route /life/timeline

dashboard_acceptance:
- dashboard never writes canonical fact directly
- dashboard cards always originate from read model endpoints
- stale projection warning appears when write acknowledged but refreshed summary not yet aligned

# ------------------------------------------------------------
# ROUTE 2: HABIT LIST
# ------------------------------------------------------------

screen:
  screen_code: habit_list
  route: /life/habits
  purpose:
  - list tracked habits and recent completion summaries
  primary_data_sources:
  - GET /api/life/v1/habits
  - GET /api/life/v1/habits/summary
  child_actions:
  - open habit quick log
  - open habit detail
  - open create habit policy note
  note:
  - if habit definition authoring is enabled later, separate design doc will define it

habit_list_states:
- habit_list.loading
- habit_list.empty
- habit_list.ready
- habit_list.refreshing
- habit_list.error

habit_list_transitions:
- loading -> ready on fetch_succeeded_with_data
- loading -> empty on fetch_succeeded_without_data
- loading -> error on fetch_failed
- ready -> refreshing on pull_to_refresh
- refreshing -> ready on refresh_succeeded
- refreshing -> error on refresh_failed
- empty -> /life/habits/log on user_tap_log_anyway

habit_list_row_actions:
- tap row -> /life/timeline?filter=habit_id
- tap quick log -> /life/habits/log?habit_id={habit_id}

habit_list_acceptance:
- row completion state is read-model only
- no row toggle directly mutates canonical log in place
- all logging routes go through log screen with idempotency key

# ------------------------------------------------------------
# ROUTE 3: HABIT LOG
# ------------------------------------------------------------

screen:
  screen_code: habit_log
  route: /life/habits/log
  purpose:
  - append a habit log fact
  api_binding:
  - POST /api/life/v1/habits/log
  request_contract_ref:
  - habit_log_create_request
  response_contract_ref:
  - habit_log_create_response

habit_log_form_fields:
- habit_id
- occurred_at
- value_numeric optional
- value_text optional
- note optional
- source_context
- timezone
- idempotency_key hidden

habit_log_states:
- habit_log.prefill_loading
- habit_log.editing
- habit_log.validating
- habit_log.submitting
- habit_log.success
- habit_log.validation_error
- habit_log.network_error

habit_log_transitions:
- prefill_loading -> editing on prefill_ready
- prefill_loading -> editing on prefill_skipped
- editing -> validating on user_tap_submit
- validating -> validation_error on local_validation_failed
- validating -> submitting on local_validation_passed
- submitting -> success on api_submit_succeeded
- submitting -> validation_error on api_validation_failed
- submitting -> network_error on api_request_failed
- validation_error -> editing on user_edit_any_field
- network_error -> submitting on user_tap_retry
- success -> /life/habits on user_tap_done
- success -> /life/dashboard on auto_close_with_toast

habit_log_field_validation:
- habit_id required
- occurred_at required and timezone-aware
- at least one of value_numeric or value_text or note may be present depending on habit rule
- note max length fixed by API contract
- idempotency_key generated on screen enter and regenerated only after success

habit_log_post_submit_behavior:
- show success receipt
- show submitted occurred_at
- show accepted record_id
- show note: dashboard/read model may refresh with delay
- optionally navigate back with refresh hint

habit_log_acceptance:
- submit button disabled during submitting
- duplicate tap cannot create duplicate log due to idempotency
- editing state preserves values after network failure
- corrections are not performed on this screen; only append log

# ------------------------------------------------------------
# ROUTE 4: HEALTH LIST
# ------------------------------------------------------------

screen:
  screen_code: health_metric_list
  route: /life/health
  purpose:
  - show metric cards and recent health logs
  primary_data_sources:
  - GET /api/life/v1/health/metrics
  - GET /api/life/v1/health/summary
  child_actions:
  - log metric
  - open timeline filtered by metric
  - open check-in

health_list_states:
- health_list.loading
- health_list.empty
- health_list.ready
- health_list.refreshing
- health_list.error

health_list_acceptance:
- list values are summary projections
- direct edit of existing measurement is not allowed from list
- correction flows go to review or correction path

# ------------------------------------------------------------
# ROUTE 5: HEALTH LOG
# ------------------------------------------------------------

screen:
  screen_code: health_metric_log
  route: /life/health/log
  purpose:
  - append a health metric fact
  api_binding:
  - POST /api/life/v1/health/metrics/log

health_log_form_fields:
- metric_code
- measured_value
- measured_unit
- measured_at
- source_type
- confidence_level optional
- note optional
- timezone
- idempotency_key hidden

health_log_states:
- health_log.editing
- health_log.validating
- health_log.submitting
- health_log.success
- health_log.validation_error
- health_log.network_error

health_log_transitions:
- editing -> validating on user_tap_submit
- validating -> validation_error on local_validation_failed
- validating -> submitting on local_validation_passed
- submitting -> success on api_submit_succeeded
- submitting -> validation_error on api_validation_failed
- submitting -> network_error on api_request_failed
- validation_error -> editing on user_edit_any_field
- network_error -> submitting on user_tap_retry
- success -> /life/health on user_tap_done
- success -> /life/dashboard on auto_close_with_toast

health_log_special_rules:
- units must align with metric_code allowed unit set
- no overwrite of previous measurement
- suspicious ranges do not block unless contract explicitly rejects; they may return warning code
- warning state remains success-like but displays anomaly notice

health_log_acceptance:
- accepted response includes record_id and warning list if any
- local draft persists on network failure
- screen can be deep-linked from dashboard or check-in

# ------------------------------------------------------------
# ROUTE 6: GOAL LIST
# ------------------------------------------------------------

screen:
  screen_code: goal_list
  route: /life/goals
  purpose:
  - show active goals and recent goal events
  primary_data_sources:
  - GET /api/life/v1/goals
  - GET /api/life/v1/goals/summary
  child_actions:
  - open create goal event
  - open timeline filtered by goal
  - open review for overdue items

goal_list_states:
- goal_list.loading
- goal_list.empty
- goal_list.ready
- goal_list.refreshing
- goal_list.error

goal_list_acceptance:
- displayed progress is a projection
- progress bar is non-authoritative UI summary
- authoritative write happens through goal event append screen

# ------------------------------------------------------------
# ROUTE 7: GOAL EVENT CREATE
# ------------------------------------------------------------

screen:
  screen_code: goal_event_create
  route: /life/goals/create
  purpose:
  - append a goal-related event such as created, progressed, paused, resumed, completed, abandoned
  api_binding:
  - POST /api/life/v1/goals/events

goal_event_form_fields:
- goal_id optional_for_new_goal
- event_type
- occurred_at
- progress_delta optional
- title optional
- note optional
- source_context
- timezone
- idempotency_key hidden

goal_event_states:
- goal_event.editing
- goal_event.validating
- goal_event.submitting
- goal_event.success
- goal_event.validation_error
- goal_event.network_error

goal_event_transition_rules:
- if event_type = created, title required
- if event_type = progress, progress_delta required
- if event_type = completed, occurred_at required and completion note optional
- if event_type = abandoned, reason note strongly encouraged
- screen never directly flips goal status in UI without accepted response

goal_event_acceptance:
- goal state visible in list updates after projection refresh
- duplicate submit protected by idempotency
- write returns event receipt, not reconstructed full goal object

# ------------------------------------------------------------
# ROUTE 8: DAILY CHECK-IN
# ------------------------------------------------------------

screen:
  screen_code: daily_checkin
  route: /life/checkin
  purpose:
  - guide user through compact daily review and create multiple append actions safely
  primary_data_sources:
  - GET /api/life/v1/checkin/template
  - POST /api/life/v1/checkin/submit
  related_reads:
  - GET /api/life/v1/dashboard
  - GET /api/life/v1/review/summary

checkin_step_model:
- step_1_mood_energy
- step_2_habit_confirmation
- step_3_health_entry_optional
- step_4_goal_progress_optional
- step_5_reflection_note
- step_6_review_submit

checkin_states:
- checkin.loading
- checkin.step_editing
- checkin.step_validation_error
- checkin.submitting
- checkin.success
- checkin.partial_warning
- checkin.network_error

checkin_transitions:
- loading -> step_editing on template_ready
- loading -> network_error on template_failed
- step_editing -> step_validation_error on invalid_next
- step_editing -> step_editing on valid_next
- step_editing -> submitting on final_submit
- submitting -> success on all_writes_accepted
- submitting -> partial_warning on accepted_with_partial_warning
- submitting -> network_error on request_failed
- partial_warning -> success on user_acknowledge
- network_error -> submitting on retry_same_payload

checkin_submit_rules:
- server may fan out into multiple append operations
- a parent checkin idempotency key covers the entire submission
- per-child write receipts returned in response
- user-visible summary distinguishes success, warning, and skipped segments

checkin_acceptance:
- user never sees partial duplicated records when retrying
- summary screen lists each child receipt with result code
- dashboard refresh is optional after success

# ------------------------------------------------------------
# ROUTE 9: TIMELINE
# ------------------------------------------------------------

screen:
  screen_code: life_timeline
  route: /life/timeline
  purpose:
  - show chronological life facts and events
  primary_data_sources:
  - GET /api/life/v1/timeline
  - GET /api/life/v1/timeline/item
  query_filters:
  - date_range
  - source_type
  - habit_id
  - metric_code
  - goal_id
  - event_type

timeline_states:
- timeline.loading
- timeline.empty
- timeline.ready
- timeline.loading_more
- timeline.error

timeline_item_actions:
- expand item detail
- open correction explanation
- open related review case if exists

timeline_acceptance:
- timeline is read-model/projection view
- timeline item detail can point to canonical fact id
- edit action is not direct mutate; routes to review/correction explanation

# ------------------------------------------------------------
# ROUTE 10: REVIEW CENTER
# ------------------------------------------------------------

screen:
  screen_code: review_center
  route: /life/review
  purpose:
  - show anomalies, correction candidates, stale projections, and follow-up tasks
  primary_data_sources:
  - GET /api/life/v1/review/summary
  - GET /api/life/v1/review/cases
  write_actions:
  - POST /api/life/v1/review/cases/{case_id}/ack
  - POST /api/life/v1/review/cases/{case_id}/resolve
  - POST /api/life/v1/review/cases/{case_id}/create-correction

review_states:
- review.loading
- review.empty
- review.ready
- review.case_action_submitting
- review.case_action_success
- review.error

review_case_types:
- suspicious_health_value
- duplicate_like_submission
- sync_gap
- stale_projection
- missing_required_context
- integration_conflict

review_transitions:
- loading -> ready on fetch_succeeded_with_cases
- loading -> empty on fetch_succeeded_without_cases
- loading -> error on fetch_failed
- ready -> case_action_submitting on user_tap_case_action
- case_action_submitting -> case_action_success on action_succeeded
- case_action_submitting -> error on action_failed
- case_action_success -> ready on list_refresh_succeeded

review_acceptance:
- resolving a case does not hard-delete canonical facts
- create-correction produces append or follow-up action, not silent overwrite
- acknowledged and resolved actions are auditable

# ------------------------------------------------------------
# ROUTE 11: INTEGRATIONS
# ------------------------------------------------------------

screen:
  screen_code: integration_center
  route: /life/integrations
  purpose:
  - manage enabled feeds and inspect ingestion status
  primary_data_sources:
  - GET /api/life/v1/integrations
  - GET /api/life/v1/integrations/status
  write_actions:
  - POST /api/life/v1/integrations/connect
  - POST /api/life/v1/integrations/disconnect
  - POST /api/life/v1/integrations/pull

integration_states:
- integrations.loading
- integrations.ready
- integrations.submitting
- integrations.success
- integrations.error

integration_acceptance:
- connect/disconnect/pull require explicit confirmation
- pull result is job-oriented and may be async
- screen must show last pull time, source status, and ingestion warnings

# ------------------------------------------------------------
# ROUTE 12: SYNC
# ------------------------------------------------------------

screen:
  screen_code: sync_status
  route: /life/sync
  purpose:
  - show projection freshness, outbox state, and recent sync events
  primary_data_sources:
  - GET /api/life/v1/sync/status
  - GET /api/life/v1/sync/history
  write_actions:
  - POST /api/life/v1/sync/request-refresh

sync_states:
- sync.loading
- sync.ready
- sync.requesting_refresh
- sync.refresh_requested
- sync.error

sync_acceptance:
- refresh request does not promise immediate projection update
- screen clearly distinguishes accepted refresh request from completed rebuild
- sync history is informational and append-based

# ------------------------------------------------------------
# ROUTE 13: SETTINGS
# ------------------------------------------------------------

screen:
  screen_code: life_settings
  route: /life/settings
  purpose:
  - manage local preferences, default units, notification preferences, and persona/background display behavior
  primary_data_sources:
  - GET /api/life/v1/settings
  write_actions:
  - POST /api/life/v1/settings/update
  note:
  - local/user preference state is separate from canonical fact history

settings_states:
- settings.loading
- settings.ready
- settings.submitting
- settings.success
- settings.validation_error
- settings.error

settings_acceptance:
- unit preferences influence default input choices but not historical fact values
- notification settings update may be immediate without projection delay
- persona/background settings align with common life-app rule

# ------------------------------------------------------------
# CROSS-SCREEN RULES
# ------------------------------------------------------------

cross_screen_refresh_policy:
- after successful append write, the origin screen shows receipt immediately
- destination summary screens may refresh lazily
- read-model lag must produce warning, never hidden silent mismatch
- pull_to_refresh always available on dashboard/list/review/sync screens

cross_screen_error_policy:
- validation errors remain local to form screen and preserve input
- server business-rule rejection maps to inline error + field anchor when possible
- network errors offer retry with same idempotency key
- permission errors block action and route to safe landing state

cross_screen_idempotency_policy:
- generate new idempotency key on screen enter for a new write intent
- preserve same key across retries for same intent
- generate new key only after success or explicit discard
- parent forms with child fan-out use one parent idempotency key and child receipts

cross_screen_accessibility_policy:
- primary action buttons have explicit labels
- validation summary appears above form and near field
- success receipts are readable without toast dependence
- offline/network failure states expose deterministic retry action

cross_screen_analytics_events:
- screen_view
- submit_clicked
- validation_failed
- submit_succeeded
- submit_failed
- refresh_requested
- case_resolved
- integration_pull_requested
note:
- analytics events must not become canonical life facts unless explicitly mapped

# ------------------------------------------------------------
# SCREEN TO API MATRIX
# ------------------------------------------------------------

screen_api_matrix:
- life_dashboard:
  - GET /api/life/v1/dashboard
  - GET /api/life/v1/review/summary
  - GET /api/life/v1/sync/status
- habit_list:
  - GET /api/life/v1/habits
  - GET /api/life/v1/habits/summary
- habit_log:
  - POST /api/life/v1/habits/log
- health_metric_list:
  - GET /api/life/v1/health/metrics
  - GET /api/life/v1/health/summary
- health_metric_log:
  - POST /api/life/v1/health/metrics/log
- goal_list:
  - GET /api/life/v1/goals
  - GET /api/life/v1/goals/summary
- goal_event_create:
  - POST /api/life/v1/goals/events
- daily_checkin:
  - GET /api/life/v1/checkin/template
  - POST /api/life/v1/checkin/submit
- life_timeline:
  - GET /api/life/v1/timeline
  - GET /api/life/v1/timeline/item
- review_center:
  - GET /api/life/v1/review/summary
  - GET /api/life/v1/review/cases
  - POST /api/life/v1/review/cases/{case_id}/ack
  - POST /api/life/v1/review/cases/{case_id}/resolve
  - POST /api/life/v1/review/cases/{case_id}/create-correction
- integration_center:
  - GET /api/life/v1/integrations
  - GET /api/life/v1/integrations/status
  - POST /api/life/v1/integrations/connect
  - POST /api/life/v1/integrations/disconnect
  - POST /api/life/v1/integrations/pull
- sync_status:
  - GET /api/life/v1/sync/status
  - GET /api/life/v1/sync/history
  - POST /api/life/v1/sync/request-refresh
- life_settings:
  - GET /api/life/v1/settings
  - POST /api/life/v1/settings/update

# ------------------------------------------------------------
# IMPLEMENTATION-FACING SCREEN MODULE SPLIT
# ------------------------------------------------------------

frontend_module_split:
- features/dashboard
- features/habits/list
- features/habits/log
- features/health/list
- features/health/log
- features/goals/list
- features/goals/create-event
- features/checkin
- features/timeline
- features/review
- features/integrations
- features/sync
- features/settings
shared_modules:
- shared/layout
- shared/persona-display
- shared/background-display
- shared/api-client
- shared/idempotency
- shared/error-envelope
- shared/sync-badge
- shared/success-receipt
- shared/validation-summary

state_management_rules:
- local draft state for forms
- query cache for reads
- mutation state separated per screen
- no hidden optimistic overwrite of canonical fact lists
- projection refresh must be explicit after write success

# ------------------------------------------------------------
# ACCEPTANCE GATE
# ------------------------------------------------------------

screen_stateflow_acceptance_gate:
- every write screen has editing, submitting, success, validation_error, network_error
- every write screen binds to exact API payload contract
- every write screen uses idempotency key lifecycle rule
- dashboard/list/timeline/review screens are read-model-driven only
- correction flows never mutate canonical facts silently
- route-level responsibilities are unique and non-overlapping
- implementation can proceed without redefining screen state names

final_decision:
- LifeOS screen-stateflow exact design is implementation-ready once paired with the already fixed DB exact design and API exact payload design.
