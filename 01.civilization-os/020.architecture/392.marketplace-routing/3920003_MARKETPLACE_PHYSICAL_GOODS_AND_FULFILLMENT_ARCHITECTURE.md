# ============================================================
# MARKETPLACE PHYSICAL GOODS AND FULFILLMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-physical-goods-and-fulfillment
component: marketplace-physical-goods-and-fulfillment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for physical-goods handling,
shipping-related fulfillment,
and non-digital delivery posture
inside Civilization Marketplace.

This document supplements:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE

This document defines:

- physical goods as a Marketplace product class
- listing review requirement for real logistics use
- fulfillment posture separation from event venue type
- shipping and delivery status posture
- pickup-style delivery posture where Marketplace supports it
- relation to order receipt and settlement

This document does not redefine:

- Marketplace core browsing
- payment routing
- seller listing lifecycle core
- raw logistics provider internals
- financial ledger truth


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization Marketplace may support
both digital goods
and real-world physical goods.

Physical-goods support
must remain a shared Marketplace capability.

It must not be redefined separately
for each event family,
facility family,
or seller family.


# ============================================================
# 3. VENUE AND FULFILLMENT SEPARATION
# ============================================================

Event venue type
and goods fulfillment type
must remain structurally separate.

Representative example:

- Civilization live events may use digital venues only
- event-linked sale may still include physical goods

Therefore:

- digital event venue
does not imply
digital goods only

- physical-goods sale
does not imply
real-world event venue architecture


# ============================================================
# 4. PRODUCT CLASS SEPARATION
# ============================================================

Marketplace product classes may include:

- digital goods
- physical goods
- mixed bundles where supported later

Physical goods require
fulfillment-capable operation
beyond entitlement-only logic.


# ============================================================
# 5. PHYSICAL GOODS REVIEW RULE
# ============================================================

If a listing uses real logistics,
real-world shipment,
or real-world handoff,
listing review is required before publication.

Representative review concerns include:

- seller authorization
- product category validity
- logistics feasibility
- inventory plausibility
- shipment method validity
- restricted or prohibited goods checks
- event-linked compatibility where applicable
- fulfillment readiness

Physical-goods review
is a shared Marketplace rule,
not an event-only rule.


# ============================================================
# 6. FULFILLMENT MODES
# ============================================================

Marketplace physical-goods fulfillment
may support modes such as:

- shipment delivery
- platform-supported pickup mode where implemented
- seller-dispatched fulfillment
- integrated third-party logistics fulfillment where implemented later

This document does not force
one specific provider model.

It establishes fulfillment as
a shared Marketplace capability.


# ============================================================
# 7. PHYSICAL GOODS ORDER POSTURE
# ============================================================

Physical-goods orders must support
post-order fulfillment states
distinct from payment state.

Representative states include:

- preparing
- shipment_pending
- shipped
- out_for_delivery where supported
- delivered
- ready_for_pickup where supported
- pickup_completed where supported
- lost_or_failed_delivery where supported

These states are fulfillment states,
not payment states.


# ============================================================
# 8. EVENT-LINKED PHYSICAL GOODS
# ============================================================

Event-linked limited sale
may include physical goods.

Representative examples include:

- live-event limited merchandise
- exhibition-limited printed goods
- screening-limited commemorative goods
- event-participant-only physical items

These remain canonical Marketplace listings.

They reuse:

- canonical listing lifecycle
- canonical payment routing
- shared physical-goods fulfillment routines


# ============================================================
# 9. INVENTORY RELATION
# ============================================================

Physical goods must support
inventory or allocation posture.

Representative inventory posture includes:

- total stock
- reservable stock
- sold-out posture
- oversell prevention posture
- event allocation posture where applicable

Inventory truth may live in linked systems,
but Marketplace fulfillment must consume it
as canonical availability input.


# ============================================================
# 10. ORDER / RECEIPT / SETTLEMENT RELATION
# ============================================================

Physical-goods fulfillment
must connect to:

- order state
- receipt confirmation state
- settlement release state
- refund state
- dispute state

Fulfillment completion alone
does not automatically mean
final settlement release,
unless settlement rules explicitly say so.


# ============================================================
# 11. COMMON USE PRINCIPLE
# ============================================================

The following must reuse
this shared physical-goods architecture
rather than redefining their own core.

Representative contexts include:

- standard Marketplace physical goods
- retail-scoped Marketplace goods
- streamer agency goods
- real-estate-design-linked physical items where supported
- event-linked limited physical goods
- company direct store physical goods

Physical-goods architecture is shared.


# ============================================================
# 12. FINAL RULE
# ============================================================

Marketplace physical-goods support must remain:

- shared
- review-aware
- fulfillment-aware
- inventory-aware
- event-compatible
- non-duplicative across seller and event families
