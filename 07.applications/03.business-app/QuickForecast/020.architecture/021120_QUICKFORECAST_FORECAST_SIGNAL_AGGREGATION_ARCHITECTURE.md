# ============================================================
# QUICKFORECAST FORECAST SIGNAL AGGREGATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: QuickForecast
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-signal-aggregation-architecture

purpose:
Makes signal aggregation and management forecast control explicit in the
current QuickForecast architecture.

architecture_intent:
- forecast work must be visible not only as calculated output,
  but as management movement
- source signals, scenario shifts, exceptions, and management attention
  points must remain explicit
- forecast readiness and blocker visibility must be queryable without
  reconstructing everything from raw source metrics only

flow_layers:
- signal intake:
  - source signal registration
  - source freshness evaluation
  - scenario baseline construction
  - forecast draft creation
- forecast control:
  - scenario comparison
  - exception detection
  - management threshold evaluation
  - attention routing
- management review:
  - forecast cockpit review
  - scenario exception visibility
  - confidence or freshness visibility
  - decision-support readiness
- control action:
  - approve scenario
  - hold scenario
  - escalate attention
  - publish management view
- closure:
  - active
  - superseded
  - archived
  - replaced_by_new_cycle

key_separations:
- raw source metrics are not the same as management forecast readiness
- scenario comparison is not the same as approval history
- exception review is not the same as chart rendering
- cockpit review is not the same as deep metric editing screen

recommended_runtime_objects:
- forecast_management_signal
- scenario_exception_review_item
- decision_support_readiness_item
- forecast_cockpit_summary
