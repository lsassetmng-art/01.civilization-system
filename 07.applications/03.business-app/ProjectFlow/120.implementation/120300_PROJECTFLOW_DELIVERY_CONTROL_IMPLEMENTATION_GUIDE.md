# ============================================================
# PROJECTFLOW DELIVERY CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: delivery-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in ProjectFlow.

implementation_priority:
- Phase A should begin from project cockpit and risk visibility,
  not from generic task CRUD expansion.
- Delivery control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for delivery timeline, dependency exposure, and cockpit outputs
- freeze cockpit and risk-review DTOs
- separate raw task mutation from delivery health aggregation
- create slice order:
  - project cockpit query
  - risk dependency review query
  - owner escalation action
  - milestone health review

hard_rules:
- keep task state separate from delivery rollup state
- keep risk review separate from raw history
- do not collapse dependency exposure into only task comments
- do not bury escalation state inside generic task notes

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  ProjectFlow can follow the same bundled Phase A pattern used in
  NameCardManager and PocketSecretary.
