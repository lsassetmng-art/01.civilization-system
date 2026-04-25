# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO_CONTROL_IMPLEMENTATION_GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in ProductPortfolioManager.

implementation_priority:
- Phase A should begin from portfolio cockpit and prioritization visibility,
  not from generic board expansion.
- Management control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for portfolio timeline, prioritization exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw product detail handling from portfolio readiness aggregation
- create slice order:
  - portfolio cockpit query
  - scenario exception review query
  - approval action
  - decision-support readiness review

hard_rules:
- keep raw product detail separate from portfolio rollup state
- keep approval and exception review separate from raw history
- do not collapse threshold breaches into only notes
- do not bury decision-support blockers inside generic board annotations

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  ProductPortfolioManager can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.
