# ============================================================
# ORDER FLOW OFFICIAL LEDGER
# ============================================================

status: draft-official-ledger
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the official ledger view of the current OrderFlow design bundle.

official_ledger:
  app_name:
    - OrderFlow

  app_definition:
    - order execution and delivery coordination front

  official_fixed_areas:
    - positioning
    - scope
    - EstimateCreator boundary
    - ERP present / absent stance
    - multilingual / multicurrency / multidevice assumptions
    - lifecycle and state model
    - partial shipment / delivery policy
    - exact core models
    - exact screen responsibilities
    - dashboard and home summary
    - API request / response exact
    - validation rules
    - role / permission / authorization
    - screen payload mapping
    - list query / filter / sort
    - notification / reminder / overdue visibility
    - table candidates
    - FK candidates
    - DDL draft candidates
    - SQL review packet
    - RLS candidates
    - migration packaging
    - seed strategy
    - downstream InvoiceFlow handoff boundary

  intentionally_deferred:
    - common component exact design
    - final approved execution SQL
    - final migration numbering
    - final seed insert refinement
    - final InvoiceFlow-side canonical design

summary:
  - this ledger is the current official navigation anchor for OrderFlow design work

