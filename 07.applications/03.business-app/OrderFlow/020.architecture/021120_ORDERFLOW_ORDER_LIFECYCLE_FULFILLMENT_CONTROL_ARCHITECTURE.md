# ============================================================
# ORDERFLOW ORDER LIFECYCLE FULFILLMENT CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: OrderFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-lifecycle-fulfillment-control-architecture

purpose:
Makes order lifecycle and fulfillment control explicit in the
current OrderFlow architecture.

architecture_intent:
- order work must be visible not only as records, but as execution movement
- approval, allocation, fulfillment, and downstream handoff must remain explicit
- order readiness and blocker visibility must be queryable without
  reconstructing everything from raw order detail only

flow_layers:
- order intake:
  - order draft creation
  - line registration
  - commercial confirmation
  - order acceptance
- fulfillment control:
  - stock or allocation check
  - approval requirement detection
  - shipment preparation
  - exception routing
- operational review:
  - order cockpit review
  - fulfillment exception visibility
  - blocked shipment visibility
  - downstream handoff readiness
- control action:
  - approve
  - hold
  - escalate
  - release for fulfillment
- closure:
  - fulfilled
  - partially fulfilled
  - cancelled
  - handed off downstream

key_separations:
- raw order entry is not the same as fulfillment readiness
- approval history is not the same as active hold state
- shipment preparation is not the same as downstream handoff completion
- cockpit review is not the same as detailed line editing screen

recommended_runtime_objects:
- order_execution_signal
- fulfillment_exception_review_item
- downstream_handoff_readiness_item
- order_cockpit_summary
