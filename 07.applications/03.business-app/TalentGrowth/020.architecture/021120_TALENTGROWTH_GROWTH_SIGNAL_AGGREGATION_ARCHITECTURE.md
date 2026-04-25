# ============================================================
# TALENTGROWTH GROWTH SIGNAL AGGREGATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: TalentGrowth
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: growth-signal-aggregation-architecture

purpose:
Makes growth signal aggregation and workforce readiness control explicit in the
current TalentGrowth architecture.

architecture_intent:
- growth work must be visible not only as records, but as management movement
- source signals, readiness shifts, exceptions, and management attention
  points must remain explicit
- growth readiness and blocker visibility must be queryable without
  reconstructing everything from raw talent detail only

flow_layers:
- signal intake:
  - capability signal registration
  - growth freshness evaluation
  - readiness baseline construction
  - development path draft creation
- growth control:
  - readiness comparison
  - exception detection
  - capability threshold evaluation
  - management attention routing
- management review:
  - growth cockpit review
  - readiness exception visibility
  - freshness and confidence visibility
  - decision-support readiness
- control action:
  - approve growth path
  - hold growth path
  - escalate attention
  - publish readiness view
- closure:
  - active
  - superseded
  - archived
  - replaced_by_new_cycle

key_separations:
- raw talent detail is not the same as workforce readiness
- path comparison is not the same as approval history
- exception review is not the same as screen presentation
- cockpit review is not the same as deep person editing screen

recommended_runtime_objects:
- growth_management_signal
- readiness_exception_review_item
- decision_support_readiness_item
- growth_cockpit_summary
