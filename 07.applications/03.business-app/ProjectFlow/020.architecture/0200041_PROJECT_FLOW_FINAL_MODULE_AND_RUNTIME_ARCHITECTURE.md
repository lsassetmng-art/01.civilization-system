# ============================================================
# PROJECT FLOW FINAL MODULE AND RUNTIME ARCHITECTURE
# ============================================================

status: canonical-finalized
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Finalizes module naming,
dependency injection direction,
offline/cache strategy,
and background-job style.

# ============================================================
# 1. FINAL MODULE NAMING
# ============================================================

final_module_set:
- app-projectflow
- core-common
- core-ui
- core-domain
- core-data
- feature-dashboard
- feature-project
- feature-task
- feature-milestone
- feature-issue-risk
- feature-time-entry
- feature-sync
- feature-export-report
- feature-form-memo-comment
- feature-automation
- feature-template-proposal
- feature-customer-material
- integration-businessos
- test-support

module_rules:
- app-projectflow is the application entry module
- core-common contains cross-feature common utilities
- core-ui contains shared UI primitives inside ProjectFlow scope
- core-domain contains ProjectFlow-local domain contracts
- core-data contains ProjectFlow-local repository/data implementations
- feature modules stay feature-scoped
- integration-businessos isolates mediated external interaction

# ============================================================
# 2. FINAL DI DIRECTION
# ============================================================

final_di_choice:
manual_dependency_injection

di_rules:
- initial implementation uses manual dependency injection
- no DI framework is required in the first implementation-planning phase
- constructor injection is the default style
- module wiring stays explicit and readable
- framework-based DI may be revisited later only if complexity justifies it

reasoning:
- reduces early framework lock-in
- matches current design-stable but implementation-not-started phase
- keeps dependency graph understandable

# ============================================================
# 3. FINAL OFFLINE / CACHE STRATEGY
# ============================================================

final_offline_cache_strategy:
local_first_operational_cache_with_mediated_sync

strategy_rules:
- ProjectFlow local operational data is cached locally
- local operational UX should remain readable without immediate network dependency where possible
- ERP-facing synchronization remains mediated and asynchronous
- sync state must clearly show when local and mediated state differ
- offline mode is not treated as full autonomous ERP replacement
- cache invalidation is driven by local mutation and mediated refresh events

initial_cache_scope:
- project list and detail
- task and milestone lists
- issue and risk lists
- time entry lists
- memo and comment lists
- report drafts
- templates
- proposals
- latest sync status snapshots

non_goal:
- full offline ERP truth ownership
- silent conflict resolution across mediated boundary

# ============================================================
# 4. FINAL BACKGROUND JOB STYLE
# ============================================================

final_background_job_style:
platform_scheduler_plus_local_refresh_triggers

style_rules:
- background work is limited to safe refresh,
  sync polling,
  export/report job status refresh,
  and retry-eligible mediated follow-up
- background work must not silently mutate local business meaning
- background work must surface status outcomes explicitly
- UI-driven refresh remains primary,
  background refresh is supportive only

initial_background_job_targets:
- sync status refresh
- export job status refresh
- report generation status refresh
- notification summary refresh

non_goal:
- hidden autonomous workflow execution
- hidden ERP-direct retry behavior
