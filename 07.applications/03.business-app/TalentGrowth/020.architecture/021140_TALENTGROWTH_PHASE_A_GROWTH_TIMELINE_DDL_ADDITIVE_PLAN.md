# ============================================================
# TALENTGROWTH PHASE A GROWTH TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: TalentGrowth
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-growth-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
growth timeline visibility, readiness exception review,
and growth cockpit assembly.

principles:
- additive only
- preserve existing TalentGrowth core
- keep raw talent detail handling separate from growth readiness rows
- keep readiness and exception review separate from raw growth history
- no SQL execution in this document

phase_a_target_capabilities:
- persist growth control timeline rows for cockpit and review
- persist readiness and decision-support blocker review rows for management visibility
- support growth cockpit query without reconstructing everything from raw talent detail
- support management attention and decision-support review slices

proposed_additive_tables:
- business.talentgrowth_growth_control_timeline_item
- business.talentgrowth_readiness_exception_review_item
- business.talentgrowth_growth_cockpit_snapshot

table_business_talentgrowth_growth_control_timeline_item:
  role:
    - stores normalized growth control timeline rows
  recommended_columns:
    - growth_control_timeline_item_id uuid pk
    - growth_plan_id uuid not null
    - related_path_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - growth_state_code text not null
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

table_business_talentgrowth_readiness_exception_review_item:
  role:
    - stores reviewable readiness and decision-support blocker rows
  recommended_columns:
    - readiness_exception_review_item_id uuid pk
    - growth_plan_id uuid not null
    - related_path_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - growth_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - effective_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_talentgrowth_growth_cockpit_snapshot:
  role:
    - stores generated growth cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - growth_cockpit_snapshot_id uuid pk
    - growth_plan_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- growth_control_timeline_item:
  - idx on growth_plan_id, growth_state_code, effective_at
  - idx on growth_plan_id, related_path_id
  - idx on growth_plan_id, related_exception_id
- readiness_exception_review_item:
  - idx on growth_plan_id, approval_required
  - idx on growth_plan_id, exception_present
  - idx on growth_plan_id, resolved
- growth_cockpit_snapshot:
  - idx on growth_plan_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no recommendation engine implementation here
- no external BI push execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
