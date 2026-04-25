# ============================================================
# PRODUCTPORTFOLIOMANAGER PRIORITIZATION SCENARIO EXCEPTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProductPortfolioManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: prioritization-scenario-exception-architecture

purpose:
Defines the relationship between prioritization review, scenario exception
handling, and management decision-support readiness in ProductPortfolioManager.

core_principle:
- portfolio slippage often appears first through stale signals,
  prioritization divergence, unresolved portfolio exception, or attention-routing
  failure before it appears as final business outcome failure.

architecture_rules:
- prioritization comparison must be represented explicitly
- exception items must be reviewable as first-class management objects
- decision-support blockers must survive beyond one screen or one session
- unresolved exceptions must be visible in the same review flow as portfolio health

exception_categories:
- source freshness risk
- prioritization divergence risk
- investment threshold breach risk
- decision-support blocker
- publication readiness risk

visibility_outputs:
- portfolio cockpit
- prioritization exception review screen
- management attention panel
- decision-support readiness overview

cross_module_relation:
- source signal layer feeds normalized portfolio signals
- prioritization layer captures comparative portfolio states
- exception layer surfaces management attention points
- decision-support layer surfaces readiness for executive or manager use
