# ============================================================
# INVOICEFLOW BILLING COLLECTION CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-collection-control-architecture

purpose:
Makes billing lifecycle and collection control explicit in the
current InvoiceFlow architecture.

architecture_intent:
- billing work must be visible not only as invoices, but as execution movement
- issuance, approval, receivable tracking, settlement, and downstream finance
  handoff must remain explicit
- billing readiness and blocker visibility must be queryable without
  reconstructing everything from raw invoice detail only

flow_layers:
- invoice intake:
  - billing draft creation
  - line or charge composition
  - invoice issue preparation
  - invoice issuance
- billing control:
  - approval requirement detection
  - receivable tracking
  - settlement confirmation
  - exception routing
- operational review:
  - billing cockpit review
  - settlement exception visibility
  - overdue receivable visibility
  - downstream finance readiness
- control action:
  - approve
  - hold
  - escalate
  - confirm settlement
- closure:
  - issued
  - partially settled
  - settled
  - cancelled
  - handed off downstream

key_separations:
- raw invoice detail is not the same as billing readiness
- approval history is not the same as active hold state
- receivable tracking is not the same as downstream finance completion
- cockpit review is not the same as detailed line editing screen

recommended_runtime_objects:
- billing_execution_signal
- settlement_exception_review_item
- downstream_finance_readiness_item
- billing_cockpit_summary
