# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO SIGNAL AGGREGATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProductPortfolioManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-signal-aggregation-architecture

purpose:
Makes portfolio signal aggregation and management control explicit in the
current ProductPortfolioManager architecture.

architecture_intent:
- portfolio work must be visible not only as items, but as management movement
- source signals, prioritization shifts, exceptions, and management attention
  points must remain explicit
- portfolio readiness and blocker visibility must be queryable without
  reconstructing everything from raw product detail only

flow_layers:
- signal intake:
  - source signal registration
  - source freshness evaluation
  - portfolio baseline construction
  - prioritization draft creation
- portfolio control:
  - prioritization comparison
  - exception detection
  - investment threshold evaluation
  - management attention routing
- management review:
  - portfolio cockpit review
  - prioritization exception visibility
  - freshness and confidence visibility
  - decision-support readiness
- control action:
  - approve prioritization
  - hold prioritization
  - escalate attention
  - publish portfolio view
- closure:
  - active
  - superseded
  - archived
  - replaced_by_new_cycle

key_separations:
- raw product detail is not the same as portfolio readiness
- scenario comparison is not the same as approval history
- exception review is not the same as board rendering
- cockpit review is not the same as deep item editing screen

recommended_runtime_objects:
- portfolio_management_signal
- prioritization_exception_review_item
- decision_support_readiness_item
- portfolio_cockpit_summary
