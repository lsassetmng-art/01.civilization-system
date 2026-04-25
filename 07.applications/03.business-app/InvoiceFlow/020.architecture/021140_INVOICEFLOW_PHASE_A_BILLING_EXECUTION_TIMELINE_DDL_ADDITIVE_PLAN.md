# ============================================================
# INVOICEFLOW PHASE A BILLING EXECUTION TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-billing-execution-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
billing execution visibility, settlement exception review,
and billing cockpit assembly.

principles:
- additive only
- preserve existing InvoiceFlow core
- keep raw invoice editing separate from execution readiness rows
- keep approval and settlement exception review separate from raw invoice history
- no SQL execution in this document

phase_a_target_capabilities:
- persist billing execution timeline rows for cockpit and review
- persist settlement and finance-blocker review rows for financial visibility
- support billing cockpit query without reconstructing everything from raw invoice state
- support approval pending and downstream finance review slices

proposed_additive_tables:
- business.invoiceflow_billing_execution_timeline_item
- business.invoiceflow_settlement_exception_review_item
- business.invoiceflow_billing_cockpit_snapshot

table_business_invoiceflow_billing_execution_timeline_item:
  role:
    - stores normalized billing execution timeline rows
  recommended_columns:
    - billing_execution_timeline_item_id uuid pk
    - invoice_id uuid not null
    - related_approval_id uuid null
    - related_settlement_blocker_id uuid null
    - related_finance_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - priority_code text null
    - due_at timestamptz null
    - approved_at timestamptz null
    - issued_at timestamptz null
    - settled_at timestamptz null
    - handed_off_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_invoiceflow_settlement_exception_review_item:
  role:
    - stores reviewable settlement and downstream finance blocker rows
  recommended_columns:
    - settlement_exception_review_item_id uuid pk
    - invoice_id uuid not null
    - related_approval_id uuid null
    - related_settlement_blocker_id uuid null
    - related_finance_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - due_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_invoiceflow_billing_cockpit_snapshot:
  role:
    - stores generated billing cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - billing_cockpit_snapshot_id uuid pk
    - invoice_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- billing_execution_timeline_item:
  - idx on invoice_id, execution_state_code, due_at
  - idx on invoice_id, related_approval_id
  - idx on invoice_id, related_settlement_blocker_id
- settlement_exception_review_item:
  - idx on invoice_id, approval_required
  - idx on invoice_id, exception_present
  - idx on invoice_id, resolved
- billing_cockpit_snapshot:
  - idx on invoice_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no payment gateway implementation here
- no accounting posting execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
