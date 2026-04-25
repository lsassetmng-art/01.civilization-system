# ============================================================
# ORDERFLOW PHASE A EXECUTION TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: OrderFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
order execution visibility, fulfillment exception review,
and order cockpit assembly.

principles:
- additive only
- preserve existing OrderFlow core
- keep raw order editing separate from execution readiness rows
- keep approval and fulfillment exception review separate from raw order history
- no SQL execution in this document

phase_a_target_capabilities:
- persist execution timeline rows for cockpit and review
- persist fulfillment and handoff blocker review rows for operational visibility
- support order cockpit query without reconstructing everything from raw order state
- support approval pending and downstream handoff review slices

proposed_additive_tables:
- business.orderflow_execution_timeline_item
- business.orderflow_fulfillment_exception_review_item
- business.orderflow_order_cockpit_snapshot

table_business_orderflow_execution_timeline_item:
  role:
    - stores normalized order execution timeline rows
  recommended_columns:
    - order_execution_timeline_item_id uuid pk
    - order_id uuid not null
    - related_approval_id uuid null
    - related_fulfillment_blocker_id uuid null
    - related_handoff_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - priority_code text null
    - required_by_at timestamptz null
    - approved_at timestamptz null
    - released_at timestamptz null
    - fulfilled_at timestamptz null
    - handed_off_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_orderflow_fulfillment_exception_review_item:
  role:
    - stores reviewable fulfillment and downstream handoff blocker rows
  recommended_columns:
    - fulfillment_exception_review_item_id uuid pk
    - order_id uuid not null
    - related_approval_id uuid null
    - related_fulfillment_blocker_id uuid null
    - related_handoff_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - required_by_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_orderflow_order_cockpit_snapshot:
  role:
    - stores generated order cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - order_cockpit_snapshot_id uuid pk
    - order_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- execution_timeline_item:
  - idx on order_id, execution_state_code, required_by_at
  - idx on order_id, related_approval_id
  - idx on order_id, related_fulfillment_blocker_id
- fulfillment_exception_review_item:
  - idx on order_id, approval_required
  - idx on order_id, exception_present
  - idx on order_id, resolved
- order_cockpit_snapshot:
  - idx on order_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no shipment engine implementation here
- no invoice generation execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
