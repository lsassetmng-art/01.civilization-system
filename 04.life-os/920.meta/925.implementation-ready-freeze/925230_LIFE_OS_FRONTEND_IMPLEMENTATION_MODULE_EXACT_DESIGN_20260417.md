# ============================================================
# LIFE OS FRONTEND / IMPLEMENTATION MODULE EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17
layer: implementation-exact-design

purpose:
- Fix the exact frontend and application-module split for LifeOS before implementation.
- Define the feature/module boundaries that connect screen-stateflow and API payloads.
- Prevent uncontrolled coupling between screens, API clients, repositories, state, and shared UI.

scope:
- frontend module topology
- application-layer feature ownership
- dto / mapper / validation ownership
- state container boundaries
- query / mutation split
- shared component rules
- test module split
- build order

non_goals:
- no DB execution
- no API server implementation
- no mobile framework code generation
- no final UI styling implementation

principles:
- feature-first split with stable shared core
- append-first write model
- read-model driven dashboard and summary screens
- idempotent write actions
- transport dto must not leak directly into view code
- screen state is owned by feature modules, not by a global uncontrolled store
- correction and review flows remain explicit feature flows

platform_policy:
- target platforms:
  - iPhone
  - Android
  - PC
  - tablet
- implementation form:
  - multi-platform app with shared domain/application contracts
- language / stack exactness is deferred until implementation start,
  but module boundaries are fixed here

# ============================================================
# 1. ROOT FRONTEND / IMPLEMENTATION SPLIT
# ============================================================

canonical_frontend_root:
- app-shell
- shared
- entities
- features
- widgets
- pages
- processes
- test-support

exact_meaning:
  app-shell:
    purpose:
    - app bootstrap
    - route registration
    - auth/session bootstrap
    - environment configuration
    - global error and retry shell

  shared:
    purpose:
    - common ui atoms
    - common utility functions
    - date/time formatting
    - id generation helpers
    - logging contract
    - transport/http primitives
    - i18n primitives
    - accessibility primitives

  entities:
    purpose:
    - entity-local model types
    - mappers from dto to entity shape
    - entity-local selectors
    - no screen orchestration

  features:
    purpose:
    - user-triggered business actions
    - form state
    - mutation orchestration
    - validation
    - feature-specific queries

  widgets:
    purpose:
    - composed view blocks used by multiple pages
    - dashboard cards
    - timeline panels
    - summary graphs
    - integration status blocks

  pages:
    purpose:
    - route-owned page composition
    - screen-level loading / empty / error handling
    - page assembly only
    - no raw API calls directly

  processes:
    purpose:
    - multi-step cross-feature flows
    - daily check-in flow
    - review flow
    - initial sync flow
    - recovery/retry flow

  test-support:
    purpose:
    - fixture builders
    - mock transport
    - screen harness
    - fake clock
    - fake idempotency key provider

# ============================================================
# 2. PAGE / ROUTE TO MODULE MAPPING
# ============================================================

route_map:
- route: /life/dashboard
  page_module: pages/life-dashboard-page
  primary_widgets:
  - widgets/dashboard-summary-cards
  - widgets/dashboard-recent-timeline
  - widgets/dashboard-goal-progress
  - widgets/dashboard-sync-status
  primary_features:
  - features/refresh-dashboard
  - features/open-daily-checkin

- route: /life/habits
  page_module: pages/habit-log-page
  primary_widgets:
  - widgets/habit-log-list
  - widgets/habit-filter-bar
  primary_features:
  - features/create-habit-log-entry
  - features/correct-habit-log-entry
  - features/load-habit-log-feed

- route: /life/health
  page_module: pages/health-metric-page
  primary_widgets:
  - widgets/health-metric-list
  - widgets/health-trend-summary
  primary_features:
  - features/create-health-metric-entry
  - features/correct-health-metric-entry
  - features/load-health-metric-feed

- route: /life/goals
  page_module: pages/goal-event-page
  primary_widgets:
  - widgets/goal-status-board
  - widgets/goal-event-list
  primary_features:
  - features/create-goal-event
  - features/close-goal-event
  - features/reopen-goal-event

- route: /life/checkin
  page_module: pages/daily-checkin-page
  primary_widgets:
  - widgets/checkin-progress-panel
  - widgets/checkin-question-block
  primary_processes:
  - processes/daily-checkin-flow

- route: /life/timeline
  page_module: pages/life-timeline-page
  primary_widgets:
  - widgets/life-event-timeline
  - widgets/timeline-filter-bar
  primary_features:
  - features/load-timeline
  - features/retry-outbox-item

- route: /life/review
  page_module: pages/life-review-page
  primary_widgets:
  - widgets/review-summary-panels
  - widgets/review-recommendation-list
  primary_processes:
  - processes/life-review-flow

- route: /life/integrations
  page_module: pages/integration-page
  primary_widgets:
  - widgets/integration-connection-list
  - widgets/integration-ingest-history
  primary_features:
  - features/start-integration-sync
  - features/retry-integration-sync
  - features/disconnect-integration

- route: /life/sync
  page_module: pages/sync-status-page
  primary_widgets:
  - widgets/outbox-status-board
  - widgets/sync-job-history
  primary_features:
  - features/refresh-sync-status
  - features/retry-outbox-range

- route: /life/settings
  page_module: pages/life-settings-page
  primary_widgets:
  - widgets/life-preference-panel
  - widgets/privacy-control-panel
  primary_features:
  - features/update-life-settings

# ============================================================
# 3. ENTITY MODULES
# ============================================================

entity_modules:
- entities/habit-log
- entities/health-metric
- entities/goal-event
- entities/life-event
- entities/outbox-item
- entities/integration-ingest
- entities/system-control
- entities/review-summary

per_entity_exact_structure:
- model.ts
- dto.ts
- mapper.ts
- guards.ts
- selector.ts
- fixture.ts

rules:
- dto.ts defines wire contract types only
- model.ts defines frontend canonical entity types only
- mapper.ts converts dto -> model and command form -> request dto
- guards.ts validates parsed transport data shape before mapper use
- selector.ts exposes pure data selectors only
- fixture.ts is test-only support and must not be imported by production pages

# ============================================================
# 4. FEATURE MODULES
# ============================================================

feature_modules:
- features/create-habit-log-entry
- features/correct-habit-log-entry
- features/load-habit-log-feed
- features/create-health-metric-entry
- features/correct-health-metric-entry
- features/load-health-metric-feed
- features/create-goal-event
- features/close-goal-event
- features/reopen-goal-event
- features/load-dashboard-summary
- features/refresh-dashboard
- features/load-timeline
- features/retry-outbox-item
- features/retry-outbox-range
- features/start-integration-sync
- features/retry-integration-sync
- features/disconnect-integration
- features/refresh-sync-status
- features/update-life-settings
- features/open-daily-checkin

per_feature_exact_structure:
- ui/
- model/
- api/
- lib/
- testing/

feature_file_split:
  ui:
  - form.tsx
  - button.tsx
  - dialog.tsx
  - panel.tsx

  model:
  - use-query.ts
  - use-mutation.ts
  - validation.ts
  - command.ts
  - state.ts
  - event.ts

  api:
  - request.ts
  - response.ts
  - client.ts

  lib:
  - mapper.ts
  - idempotency.ts
  - telemetry.ts

  testing:
  - feature.spec.ts
  - feature.fixture.ts

rules:
- each write feature owns its idempotency generation strategy
- each feature may depend on shared/http and entity modules
- features must not import page modules
- features may expose a single public index entry point only

# ============================================================
# 5. PROCESS MODULES
# ============================================================

process_modules:
- processes/daily-checkin-flow
- processes/life-review-flow
- processes/initial-sync-flow
- processes/recovery-retry-flow

process_structure:
- orchestrator.ts
- step-registry.ts
- flow-state.ts
- transition-guard.ts
- recovery.ts
- analytics.ts

rules:
- process modules coordinate multiple features
- process modules must not own transport contracts directly
- process state is temporary flow state, not canonical persisted fact
- process failure transitions must be explicit and resumable

# ============================================================
# 6. WIDGET MODULES
# ============================================================

widget_modules:
- widgets/dashboard-summary-cards
- widgets/dashboard-recent-timeline
- widgets/dashboard-goal-progress
- widgets/dashboard-sync-status
- widgets/habit-log-list
- widgets/habit-filter-bar
- widgets/health-metric-list
- widgets/health-trend-summary
- widgets/goal-status-board
- widgets/goal-event-list
- widgets/checkin-progress-panel
- widgets/checkin-question-block
- widgets/life-event-timeline
- widgets/timeline-filter-bar
- widgets/review-summary-panels
- widgets/review-recommendation-list
- widgets/integration-connection-list
- widgets/integration-ingest-history
- widgets/outbox-status-board
- widgets/sync-job-history
- widgets/life-preference-panel
- widgets/privacy-control-panel

rules:
- widgets may compose entities and features
- widgets must not own mutation logic except through feature callbacks
- widgets must support loading, empty, and error states through explicit props

# ============================================================
# 7. SHARED INFRASTRUCTURE MODULES
# ============================================================

shared_modules:
- shared/http
- shared/error
- shared/i18n
- shared/date-time
- shared/idempotency
- shared/accessibility
- shared/form
- shared/logger
- shared/config
- shared/session

shared_http_exact_split:
- create-client.ts
- auth-header.ts
- request-id.ts
- retry-policy.ts
- error-parser.ts
- timeout-policy.ts

shared_error_exact_split:
- error-code.ts
- error-envelope.ts
- to-user-message.ts
- recoverability.ts

shared_i18n_exact_split:
- message-key.ts
- locale-loader.ts
- formatter.ts
- fallback-policy.ts

shared_form_exact_split:
- field-state.ts
- touched-state.ts
- submission-state.ts
- validation-result.ts

# ============================================================
# 8. STATE MANAGEMENT EXACTNESS
# ============================================================

state_layers:
- server-query-state
- local-form-state
- local-screen-ui-state
- cross-step-process-state
- session-shell-state

exact_rules:
  server_query_state:
  - owned by feature or process query hooks
  - cached by key
  - must be invalidated only through documented events

  local_form_state:
  - owned by feature forms
  - reset on submit success only when flow definition allows
  - correction forms must preserve original reference metadata

  local_screen_ui_state:
  - page-local only
  - tab selection, filter expansion, modal visibility
  - must not carry canonical domain meaning

  cross_step_process_state:
  - owned by process modules
  - resumable if user leaves and returns within same session design rules

  session_shell_state:
  - current locale
  - current device capabilities
  - current auth/session token metadata

forbidden_global_state:
- raw transport response blobs
- hidden write queues outside outbox/sync features
- implicit correction buffers
- page-to-page mutation payload sharing without explicit process ownership

# ============================================================
# 9. API CLIENT OWNERSHIP
# ============================================================

client_modules:
- shared/http/base-life-client
- features/*/api/client
- processes/* use feature clients only

rules:
- no page calls fetch/transport directly
- no widget calls transport directly
- api request/response type files must follow 925210 exact payload design
- every write request must include idempotency key header or body field as fixed by API design

# ============================================================
# 10. VALIDATION OWNERSHIP
# ============================================================

validation_split:
- transport shape validation
- command validation
- form validation
- domain rule validation

exact_ownership:
  transport_shape_validation:
  owner: entities/*/guards.ts or shared/http/error-parser.ts

  command_validation:
  owner: features/*/model/validation.ts

  form_validation:
  owner: features/*/model/validation.ts with shared/form primitives

  domain_rule_validation:
  owner: feature command builders using fixed business rules from API exact design

validation_examples:
- habit occurrence timestamp required
- health metric numeric bounds depend on metric_type
- goal close request must include closure_reason
- integration retry must reference retryable status only
- check-in submit must reject duplicate unresolved session tokens

# ============================================================
# 11. IDENTITY / IDEMPOTENCY / TRACEABILITY
# ============================================================

exact_rules:
- each write feature must call shared/idempotency/create-key
- each mutation attaches request_trace_id
- each mutation logs feature_name, route_name, command_name
- retry uses same idempotency key only when retrying same logical action
- correction action must carry original_record_id and correction_reason when required

shared_idempotency_contract:
- create_key(scope, actor_ref, stable_subject_ref, logical_action_ref)
- parse_key(key)
- is_retryable_same_action(old_key, new_context)

# ============================================================
# 12. ERROR / EMPTY / LOADING CONTRACT
# ============================================================

all_pages_must_support:
- skeleton_loading_state
- empty_state
- transient_error_state
- retriable_error_state
- non_retriable_error_state
- stale_data_banner_when_applicable

error_rendering_rule:
- transport errors are converted to user-visible codes via shared/error
- widgets receive normalized error objects only
- no raw backend message string is shown directly

# ============================================================
# 13. FRONTEND TEST MODULE SPLIT
# ============================================================

test_layers:
- unit
- mapper
- validation
- feature-integration
- page-composition
- process-flow
- contract-snapshot

exact_test_ownership:
  unit:
  - selectors
  - local reducers/state helpers
  - pure formatters

  mapper:
  - dto -> entity mapping
  - command -> request mapping

  validation:
  - field validation
  - command validation

  feature_integration:
  - query + mutation hook behavior
  - retry policy
  - optimistic or post-submit refresh policy if used

  page_composition:
  - loading / empty / error / success branches

  process_flow:
  - daily check-in flow transitions
  - review flow transitions
  - recovery and retry flow

  contract_snapshot:
  - API request and response shape snapshots aligned to 925210

acceptance_minimum:
- each feature module must have at least:
  - one validation test
  - one success-path integration test
  - one failure-path integration test
- each page module must have at least:
  - loading branch test
  - empty or data branch test
  - retriable error branch test

# ============================================================
# 14. FILE / FOLDER EXAMPLE
# ============================================================

example_tree:
- features/create-habit-log-entry/
  - ui/form.tsx
  - ui/button.tsx
  - model/use-mutation.ts
  - model/validation.ts
  - model/command.ts
  - api/request.ts
  - api/response.ts
  - api/client.ts
  - lib/mapper.ts
  - lib/idempotency.ts
  - testing/feature.spec.ts

- pages/habit-log-page/
  - index.tsx
  - page-state.ts
  - route.ts
  - testing/page.spec.ts

- entities/habit-log/
  - model.ts
  - dto.ts
  - mapper.ts
  - guards.ts
  - selector.ts

# ============================================================
# 15. IMPLEMENTATION BUILD ORDER
# ============================================================

frontend_build_order:
- shared/http
- shared/error
- shared/i18n
- entity modules
- core write features
- core read features
- widgets
- pages
- processes
- test-support
- shell integration

priority_wave_1:
- entities/habit-log
- entities/health-metric
- entities/goal-event
- shared/http
- shared/error
- features/create-habit-log-entry
- features/create-health-metric-entry
- features/create-goal-event
- pages/habit-log-page
- pages/health-metric-page
- pages/goal-event-page

priority_wave_2:
- dashboard widgets
- timeline widgets
- review widgets
- sync/integration widgets
- daily check-in process

priority_wave_3:
- settings
- advanced retry/recovery flows
- analytics-facing read widgets

# ============================================================
# 16. ACCEPTANCE GATE
# ============================================================

implementation_module_acceptance_requires:
- every route mapped to a page module
- every page depends only on widgets/features/entities/shared
- every write action mapped to exactly one feature module owner
- every process step mapped to explicit process orchestrator
- every request/response matches 925210 exact payload design
- every domain write path mapped to 925200 core DB exact design
- no page or widget uses raw transport directly
- test minimums satisfied for all priority wave 1 modules

failure_conditions:
- duplicated mutation ownership across features
- page-local raw dto parsing
- hidden shared mutable singleton state
- correction logic implemented as silent overwrite
- write success path without idempotency attachment

# ============================================================
# 17. DECISION
# ============================================================

decision:
- LifeOS frontend / implementation module split is fixed by this document before implementation start.
- Future detailed implementation must conform to this ownership model.
- Any deviation requires an explicit design delta, not silent implementation drift.

