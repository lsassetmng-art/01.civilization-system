# ============================================================
# INVOICEFLOW BILLING CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in InvoiceFlow.

implementation_priority:
- Phase A should begin from billing cockpit and settlement visibility,
  not from generic invoice editing expansion.
- Financial control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for execution timeline, settlement exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw invoice editing from execution readiness aggregation
- create slice order:
  - billing cockpit query
  - settlement exception review query
  - approval action
  - downstream finance readiness review

hard_rules:
- keep raw invoice detail separate from execution rollup state
- keep approval and exception review separate from raw history
- do not collapse overdue or settlement blockers into only notes
- do not bury downstream finance blockers inside generic invoice text

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  InvoiceFlow can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.
