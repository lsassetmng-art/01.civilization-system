# ============================================================
# TALENTGROWTH GROWTH_CONTROL_IMPLEMENTATION_GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: TalentGrowth
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: growth-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in TalentGrowth.

implementation_priority:
- Phase A should begin from growth cockpit and readiness visibility,
  not from generic training list expansion.
- Management control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for growth timeline, readiness exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw person detail handling from growth readiness aggregation
- create slice order:
  - growth cockpit query
  - growth exception review query
  - approval action
  - decision-support readiness review

hard_rules:
- keep raw talent detail separate from growth rollup state
- keep approval and exception review separate from raw history
- do not collapse threshold breaches into only notes
- do not bury decision-support blockers inside generic growth annotations

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  TalentGrowth can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.
