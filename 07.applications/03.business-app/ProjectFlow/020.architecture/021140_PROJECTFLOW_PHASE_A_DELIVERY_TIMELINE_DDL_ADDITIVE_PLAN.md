# ============================================================
# PROJECTFLOW PHASE A DELIVERY TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProjectFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-delivery-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
delivery timeline visibility, milestone dependency exposure,
and project cockpit assembly.

principles:
- additive only
- preserve existing ProjectFlow core
- keep raw task mutation separate from delivery health rows
- keep risk review separate from raw history or comments
- no SQL execution in this document

phase_a_target_capabilities:
- persist delivery timeline rows for cockpit and review
- persist dependency review rows for management visibility
- support project cockpit query without reconstructing everything from raw task state
- support risk and escalation review slices

proposed_additive_tables:
- business.projectflow_delivery_timeline_item
- business.projectflow_dependency_review_item
- business.projectflow_project_cockpit_snapshot

table_business_projectflow_delivery_timeline_item:
  role:
    - stores normalized delivery-oriented timeline rows
  recommended_columns:
    - project_delivery_timeline_item_id uuid pk
    - project_id uuid not null
    - related_task_id uuid null
    - related_milestone_id uuid null
    - related_dependency_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - delivery_state_code text not null
    - priority_code text null
    - due_at timestamptz null
    - scheduled_start_at timestamptz null
    - scheduled_end_at timestamptz null
    - risk_level_code text null
    - blocker_present boolean not null
    - owner_user_id uuid null
    - escalation_required boolean not null
    - source_module_code text not null
    - completed_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_projectflow_dependency_review_item:
  role:
    - stores reviewable dependency and risk review rows
  recommended_columns:
    - dependency_review_item_id uuid pk
    - project_id uuid not null
    - related_milestone_id uuid null
    - related_dependency_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - delivery_state_code text not null
    - risk_level_code text null
    - blocker_present boolean not null
    - owner_user_id uuid null
    - decision_pending boolean not null
    - resolved boolean not null
    - due_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_projectflow_project_cockpit_snapshot:
  role:
    - stores generated project cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - project_cockpit_snapshot_id uuid pk
    - project_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- delivery_timeline_item:
  - idx on project_id, delivery_state_code, due_at
  - idx on project_id, scheduled_start_at
  - idx on project_id, related_milestone_id
- dependency_review_item:
  - idx on project_id, risk_level_code
  - idx on project_id, decision_pending
  - idx on project_id, resolved
- project_cockpit_snapshot:
  - idx on project_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no workflow engine implementation here
- no gantt renderer implementation here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
