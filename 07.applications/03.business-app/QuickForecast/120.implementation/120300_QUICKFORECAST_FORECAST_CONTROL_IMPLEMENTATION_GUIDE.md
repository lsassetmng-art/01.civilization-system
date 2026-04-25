# ============================================================
# QUICKFORECAST FORECAST CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in QuickForecast.

implementation_priority:
- Phase A should begin from forecast cockpit and scenario visibility,
  not from generic chart expansion.
- Management control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for forecast timeline, scenario exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw source metric handling from management readiness aggregation
- create slice order:
  - forecast cockpit query
  - scenario exception review query
  - approval action
  - decision-support readiness review

hard_rules:
- keep raw source detail separate from forecast rollup state
- keep approval and exception review separate from raw history
- do not collapse threshold breaches into only notes
- do not bury decision-support blockers inside generic chart annotations

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  QuickForecast can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.
