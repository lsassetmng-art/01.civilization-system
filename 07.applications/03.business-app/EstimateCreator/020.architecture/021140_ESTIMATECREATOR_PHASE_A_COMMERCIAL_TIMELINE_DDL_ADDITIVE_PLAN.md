# ============================================================
# ESTIMATECREATOR PHASE A COMMERCIAL TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: EstimateCreator
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-commercial-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
commercial timeline visibility, revision and approval review,
and estimate cockpit assembly.

principles:
- additive only
- preserve existing EstimateCreator core
- keep raw estimate editing separate from commercial readiness rows
- keep revision and approval review separate from raw document history
- no SQL execution in this document

phase_a_target_capabilities:
- persist commercial timeline rows for cockpit and review
- persist revision and approval review rows for governance visibility
- support estimate cockpit query without reconstructing everything from raw estimate history
- support pricing exception and conversion blocker review slices

proposed_additive_tables:
- business.estimatecreator_commercial_timeline_item
- business.estimatecreator_revision_approval_review_item
- business.estimatecreator_estimate_cockpit_snapshot

table_business_estimatecreator_commercial_timeline_item:
  role:
    - stores normalized commercial-decision timeline rows
  recommended_columns:
    - estimate_commercial_timeline_item_id uuid pk
    - estimate_id uuid not null
    - related_revision_id uuid null
    - related_approval_id uuid null
    - related_conversion_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - commercial_state_code text not null
    - priority_code text null
    - valid_until_at timestamptz null
    - reviewed_at timestamptz null
    - approved_at timestamptz null
    - rejected_at timestamptz null
    - converted_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_estimatecreator_revision_approval_review_item:
  role:
    - stores reviewable revision and approval rows
  recommended_columns:
    - revision_approval_review_item_id uuid pk
    - estimate_id uuid not null
    - related_revision_id uuid null
    - related_approval_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - commercial_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - valid_until_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_estimatecreator_estimate_cockpit_snapshot:
  role:
    - stores generated estimate cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - estimate_cockpit_snapshot_id uuid pk
    - estimate_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- commercial_timeline_item:
  - idx on estimate_id, commercial_state_code, valid_until_at
  - idx on estimate_id, related_revision_id
  - idx on estimate_id, related_approval_id
- revision_approval_review_item:
  - idx on estimate_id, approval_required
  - idx on estimate_id, exception_present
  - idx on estimate_id, resolved
- estimate_cockpit_snapshot:
  - idx on estimate_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no PDF renderer implementation here
- no ERP order conversion execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
