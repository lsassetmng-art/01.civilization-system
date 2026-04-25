# ============================================================
# QUICKFORECAST PHASE A FORECAST TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: QuickForecast
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-forecast-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
forecast timeline visibility, scenario exception review,
and forecast cockpit assembly.

principles:
- additive only
- preserve existing QuickForecast core
- keep raw source metric handling separate from management readiness rows
- keep scenario and exception review separate from raw signal history
- no SQL execution in this document

phase_a_target_capabilities:
- persist management forecast timeline rows for cockpit and review
- persist scenario and decision-support blocker review rows for management visibility
- support forecast cockpit query without reconstructing everything from raw source metrics
- support management attention and decision-support review slices

proposed_additive_tables:
- business.quickforecast_management_forecast_timeline_item
- business.quickforecast_scenario_exception_review_item
- business.quickforecast_forecast_cockpit_snapshot

table_business_quickforecast_management_forecast_timeline_item:
  role:
    - stores normalized management forecast timeline rows
  recommended_columns:
    - management_forecast_timeline_item_id uuid pk
    - forecast_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - forecast_state_code text not null
    - priority_code text null
    - effective_at timestamptz null
    - published_at timestamptz null
    - superseded_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_quickforecast_scenario_exception_review_item:
  role:
    - stores reviewable scenario and decision-support blocker rows
  recommended_columns:
    - scenario_exception_review_item_id uuid pk
    - forecast_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - forecast_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - effective_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_quickforecast_forecast_cockpit_snapshot:
  role:
    - stores generated forecast cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - forecast_cockpit_snapshot_id uuid pk
    - forecast_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- management_forecast_timeline_item:
  - idx on forecast_id, forecast_state_code, effective_at
  - idx on forecast_id, related_scenario_id
  - idx on forecast_id, related_exception_id
- scenario_exception_review_item:
  - idx on forecast_id, approval_required
  - idx on forecast_id, exception_present
  - idx on forecast_id, resolved
- forecast_cockpit_snapshot:
  - idx on forecast_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no prediction engine implementation here
- no external BI push execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
