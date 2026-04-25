# ============================================================
# ORDERFLOW COMPETITIVE POSITIONING NOTE
# ============================================================

status: canonical
layer: constitution
system: applications
application: OrderFlow
directory: 010.constitution
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: competitive-positioning-note

purpose:
Clarifies the differentiator that should be made explicit in the
current OrderFlow design without rewriting its existing core.

positioning_summary:
- OrderFlow is not only an order registry.
- Its durable value is operational control across order acceptance,
  approval, allocation, fulfillment, exception handling, and downstream handoff.
- The differentiator is not simple order entry, but lifecycle control
  that keeps execution readiness and fulfillment risk visible.

preserved_core:
- order and sales operation identity
- existing business operation role
- existing ERP and adjacent commercial flow relation
- existing approval and operational separation direction
- existing platform direction

differentiator_to_make_explicit:
- order lifecycle control
- fulfillment readiness visibility
- approval and exception traceability
- downstream handoff visibility toward invoice and related flows

competitive_contrast:
- not merely a sales order form
- not merely an ERP input screen
- not merely a status list
- positioned as an order execution control layer that connects
  approval, fulfillment readiness, exception review, and downstream movement

non_goals_of_this_note:
- no full constitutional rewrite
- no implementation start
- no destructive scope replacement
- no framework decision
