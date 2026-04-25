# ============================================================
# ESTIMATECREATOR ESTIMATE LIFECYCLE PRICING CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: EstimateCreator
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: estimate-lifecycle-pricing-control-architecture

purpose:
Makes estimate lifecycle and pricing control explicit in the
current EstimateCreator architecture.

architecture_intent:
- estimate work must be visible not only as a document draft,
  but as a governed commercial lifecycle
- revisions, approval checkpoints, and pricing changes must remain explicit
- order conversion readiness must be queryable without reconstructing
  everything from raw document history only

flow_layers:
- estimate drafting:
  - customer scope capture
  - line composition
  - pricing proposal
  - revision draft save
- pricing control:
  - discount application
  - margin check
  - approval requirement detection
  - exception routing
- commercial review:
  - revision comparison
  - approval review
  - negotiation readiness view
  - order conversion readiness
- control action:
  - revise
  - request approval
  - approve or reject
  - convert to order when eligible
- closure:
  - estimate accepted
  - estimate rejected
  - estimate expired
  - estimate archived

key_separations:
- raw draft content is not the same as commercial readiness
- revision history is not the same as active approval state
- pricing exception detection is not the same as approval history
- cockpit review is not the same as line-item editing screen

recommended_runtime_objects:
- estimate_lifecycle_signal
- estimate_revision_review_item
- estimate_conversion_readiness_item
- estimate_cockpit_summary
