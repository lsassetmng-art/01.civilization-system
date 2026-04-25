# ============================================================
# EXPENSESETTLEMENT PHASE A SETTLEMENT TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: ExpenseSettlement
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-settlement-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
settlement timeline visibility, expense exception review,
and expense cockpit assembly.

principles:
- additive only
- preserve existing ExpenseSettlement core
- keep raw claim detail handling separate from settlement readiness rows
- keep receipt and policy exception review separate from raw claim history
- no SQL execution in this document

phase_a_target_capabilities:
- persist settlement control timeline rows for cockpit and review
- persist receipt, policy, and ERP handoff blocker review rows for settlement visibility
- support expense cockpit query without reconstructing everything from raw claim detail
- support compliance and ERP handoff review slices

proposed_additive_tables:
- business.expensesettlement_settlement_control_timeline_item
- business.expensesettlement_expense_exception_review_item
- business.expensesettlement_expense_cockpit_snapshot

table_business_expensesettlement_settlement_control_timeline_item:
  role:
    - stores normalized settlement control timeline rows
  recommended_columns:
    - settlement_control_timeline_item_id uuid pk
    - expense_claim_id uuid not null
    - related_approval_id uuid null
    - related_exception_id uuid null
    - related_erp_handoff_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - settlement_state_code text not null
    - priority_code text null
    - due_at timestamptz null
    - approved_at timestamptz null
    - paid_at timestamptz null
    - handed_off_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_expensesettlement_expense_exception_review_item:
  role:
    - stores reviewable receipt, policy, and ERP blocker rows
  recommended_columns:
    - expense_exception_review_item_id uuid pk
    - expense_claim_id uuid not null
    - related_approval_id uuid null
    - related_exception_id uuid null
    - related_erp_handoff_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - settlement_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - due_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_expensesettlement_expense_cockpit_snapshot:
  role:
    - stores generated expense cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - expense_cockpit_snapshot_id uuid pk
    - expense_claim_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- settlement_control_timeline_item:
  - idx on expense_claim_id, settlement_state_code, due_at
  - idx on expense_claim_id, related_approval_id
  - idx on expense_claim_id, related_exception_id
- expense_exception_review_item:
  - idx on expense_claim_id, approval_required
  - idx on expense_claim_id, exception_present
  - idx on expense_claim_id, resolved
- expense_cockpit_snapshot:
  - idx on expense_claim_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no OCR implementation here
- no payout engine implementation here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
