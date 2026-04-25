# ============================================================
# APPDEVELOPMENTSTUDIO PHASE A DEVELOPMENT TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: AppDevelopmentStudio
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-development-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
development timeline visibility, implementation exception review,
and studio cockpit assembly.

principles:
- additive only
- preserve existing AppDevelopmentStudio core
- keep raw artifact detail handling separate from execution readiness rows
- keep implementation and release blocker review separate from raw artifact history
- no SQL execution in this document

phase_a_target_capabilities:
- persist development control timeline rows for cockpit and review
- persist implementation, build, and release blocker review rows for studio visibility
- support studio cockpit query without reconstructing everything from raw artifact detail
- support build and release readiness review slices

proposed_additive_tables:
- business.appdevelopmentstudio_development_control_timeline_item
- business.appdevelopmentstudio_implementation_exception_review_item
- business.appdevelopmentstudio_studio_cockpit_snapshot

table_business_appdevelopmentstudio_development_control_timeline_item:
  role:
    - stores normalized development control timeline rows
  recommended_columns:
    - development_control_timeline_item_id uuid pk
    - studio_work_id uuid not null
    - related_review_id uuid null
    - related_exception_id uuid null
    - related_release_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - development_state_code text not null
    - priority_code text null
    - due_at timestamptz null
    - approved_at timestamptz null
    - build_ready_at timestamptz null
    - released_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_appdevelopmentstudio_implementation_exception_review_item:
  role:
    - stores reviewable implementation, build, and release blocker rows
  recommended_columns:
    - implementation_exception_review_item_id uuid pk
    - studio_work_id uuid not null
    - related_review_id uuid null
    - related_exception_id uuid null
    - related_release_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - development_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - due_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_appdevelopmentstudio_studio_cockpit_snapshot:
  role:
    - stores generated studio cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - studio_cockpit_snapshot_id uuid pk
    - studio_work_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- development_control_timeline_item:
  - idx on studio_work_id, development_state_code, due_at
  - idx on studio_work_id, related_review_id
  - idx on studio_work_id, related_exception_id
- implementation_exception_review_item:
  - idx on studio_work_id, approval_required
  - idx on studio_work_id, exception_present
  - idx on studio_work_id, resolved
- studio_cockpit_snapshot:
  - idx on studio_work_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no IDE runtime implementation here
- no build agent implementation here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
