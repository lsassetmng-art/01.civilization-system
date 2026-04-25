# ============================================================
# EXPENSESETTLEMENT SETTLEMENT_CONTROL_IMPLEMENTATION_GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: ExpenseSettlement
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: settlement-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in ExpenseSettlement.

implementation_priority:
- Phase A should begin from expense cockpit and compliance visibility,
  not from generic claim-entry expansion.
- Settlement control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for settlement timeline, exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw claim detail handling from settlement readiness aggregation
- create slice order:
  - expense cockpit query
  - expense exception review query
  - approval action
  - ERP handoff readiness review

hard_rules:
- keep raw expense detail separate from settlement rollup state
- keep approval and exception review separate from raw history
- do not collapse receipt or policy issues into only notes
- do not bury ERP handoff blockers inside generic annotations

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  ExpenseSettlement can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.
