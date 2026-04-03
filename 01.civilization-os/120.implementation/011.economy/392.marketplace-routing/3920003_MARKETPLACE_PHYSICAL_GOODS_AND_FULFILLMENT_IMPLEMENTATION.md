# ============================================================
# MARKETPLACE PHYSICAL GOODS AND FULFILLMENT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-physical-goods-and-fulfillment-implementation
component: marketplace-physical-goods-and-fulfillment-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Marketplace physical-goods handling
and fulfillment flow.

This document must align with:

- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE
- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE


# ============================================================
# 2. IMPLEMENTATION POSITION
# ============================================================

Physical-goods handling sits after:

- listing review and publication
- buyer order creation
- payment posture confirmation

It sits before:

- receipt confirmation
- payout release
- final settlement closure


# ============================================================
# 3. LISTING REVIEW RULE
# ============================================================

If a listing uses physical fulfillment,
publication should require
a fulfillment-capable review posture.

Representative checks include:

- seller eligibility
- category validity
- inventory plausibility
- shipment method readiness
- restricted-item screening
- event-linked constraints where applicable

Failed review must block publication.


# ============================================================
# 4. ORDER TO FULFILLMENT RULE
# ============================================================

Representative progression:

listing published
-> buyer order created
-> payment succeeded
-> fulfillment_preparing
-> shipped or equivalent fulfillment progression
-> delivery / pickup readiness
-> receipt posture handoff

Payment success alone
must not skip fulfillment states.


# ============================================================
# 5. FULFILLMENT STATES
# ============================================================

Implementation should support states such as:

- preparing
- shipment_pending
- shipped
- delivered
- ready_for_pickup where supported
- pickup_completed where supported
- fulfillment_failed where supported

These states should remain explicit
and traceable.


# ============================================================
# 6. INVENTORY CONSUMPTION RULE
# ============================================================

Inventory or allocation consumption
should occur at a controlled step
that prevents oversell.

The exact lock moment may depend on policy,
but oversell prevention must remain explicit.


# ============================================================
# 7. EVENT-LINKED PHYSICAL GOODS RULE
# ============================================================

If a listing is event-linked
and also physical,
it still uses shared physical-goods fulfillment.

Event linkage may constrain:

- sale window
- quantity
- eligibility

But it must not create
a separate fulfillment core.


# ============================================================
# 8. FAILURE HANDLING RULE
# ============================================================

Fulfillment failure must be distinguishable from:

- payment failure
- listing failure
- receipt dispute

Failure states must be explicit
and route into order / receipt / settlement handling.


# ============================================================
# 9. FINAL RULE
# ============================================================

Physical-goods fulfillment implementation must remain:

- review-aware
- inventory-aware
- state-explicit
- event-compatible
- shared across Marketplace contexts
