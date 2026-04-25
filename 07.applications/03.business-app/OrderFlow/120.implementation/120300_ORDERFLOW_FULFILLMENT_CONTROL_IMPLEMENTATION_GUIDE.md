# ============================================================
# ORDERFLOW FULFILLMENT CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: fulfillment-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in OrderFlow.

implementation_priority:
- Phase A should begin from order cockpit and fulfillment visibility,
  not from generic order entry expansion.
- Operational control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for execution timeline, exception review, and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw order editing from execution readiness aggregation
- create slice order:
  - order cockpit query
  - fulfillment exception review query
  - approval action
  - downstream handoff readiness review

hard_rules:
- keep raw order detail separate from execution rollup state
- keep approval and exception review separate from raw history
- do not collapse fulfillment blockers into only notes or comments
- do not bury downstream blockers inside generic order text

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  OrderFlow can follow the same bundled Phase A pattern used in
  NameCardManager, PocketSecretary, ProjectFlow, and EstimateCreator.
