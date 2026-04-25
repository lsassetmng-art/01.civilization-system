# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A PORTFOLIO TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProductPortfolioManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-portfolio-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
portfolio timeline visibility, prioritization exception review,
and portfolio cockpit assembly.

principles:
- additive only
- preserve existing ProductPortfolioManager core
- keep raw product detail handling separate from management readiness rows
- keep scenario and exception review separate from raw portfolio history
- no SQL execution in this document

phase_a_target_capabilities:
- persist portfolio control timeline rows for cockpit and review
- persist prioritization and decision-support blocker review rows for management visibility
- support portfolio cockpit query without reconstructing everything from raw product detail
- support management attention and decision-support review slices

proposed_additive_tables:
- business.productportfoliomanager_portfolio_control_timeline_item
- business.productportfoliomanager_prioritization_exception_review_item
- business.productportfoliomanager_portfolio_cockpit_snapshot

table_business_productportfoliomanager_portfolio_control_timeline_item:
  role:
    - stores normalized portfolio control timeline rows
  recommended_columns:
    - portfolio_control_timeline_item_id uuid pk
    - portfolio_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - portfolio_state_code text not null
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

table_business_productportfoliomanager_prioritization_exception_review_item:
  role:
    - stores reviewable prioritization and decision-support blocker rows
  recommended_columns:
    - prioritization_exception_review_item_id uuid pk
    - portfolio_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - portfolio_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - effective_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_productportfoliomanager_portfolio_cockpit_snapshot:
  role:
    - stores generated portfolio cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - portfolio_cockpit_snapshot_id uuid pk
    - portfolio_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- portfolio_control_timeline_item:
  - idx on portfolio_id, portfolio_state_code, effective_at
  - idx on portfolio_id, related_scenario_id
  - idx on portfolio_id, related_exception_id
- prioritization_exception_review_item:
  - idx on portfolio_id, approval_required
  - idx on portfolio_id, exception_present
  - idx on portfolio_id, resolved
- portfolio_cockpit_snapshot:
  - idx on portfolio_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no optimization engine implementation here
- no external BI push execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
