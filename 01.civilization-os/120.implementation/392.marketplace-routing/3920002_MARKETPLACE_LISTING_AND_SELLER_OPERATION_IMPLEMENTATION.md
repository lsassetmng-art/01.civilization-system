# ============================================================
# MARKETPLACE LISTING AND SELLER OPERATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-listing-and-seller-operation-implementation
component: marketplace-listing-and-seller-operation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Marketplace listing lifecycle
and seller-side operation
inside Civilization.

This document must align with:

- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This implementation must support:

- create listing
- edit listing
- submit for review
- publish listing
- suspend listing
- cancel listing
- relist where allowed
- event-linked limited sale operation
- seller-context filtering


# ============================================================
# 3. CANONICAL LISTING LIFECYCLE RULE
# ============================================================

Representative lifecycle:

draft
-> review_pending where required
-> approved_ready where required
-> published
-> active_sale
-> suspended or expired or sold_out or cancelled
-> relisted where allowed

Lifecycle state must remain explicit.


# ============================================================
# 4. PHYSICAL GOODS REVIEW RULE
# ============================================================

If a listing uses real logistics
or physical fulfillment,
publication should require review.

This must integrate with shared
physical-goods fulfillment rules.


# ============================================================
# 5. EVENT-LINKED LIMITED SALE RULE
# ============================================================

Event-linked limited sale
must remain a contextual listing mode.

Representative contextual controls include:

- event_id
- event_type
- sale_window
- quantity_limit
- per-user limit
- participant eligibility

Live-event limited sale is a subtype,
not a separate listing core.


# ============================================================
# 6. DIGITAL-VENUE / PHYSICAL-GOODS RULE
# ============================================================

Civilization live events may use
digital venues only,
while still allowing sale of:

- digital goods
- physical goods

Seller operation must preserve
the separation of venue type and fulfillment type.


# ============================================================
# 7. FACILITY-LOCAL SELLER RULE
# ============================================================

Facility-local seller operation
must reuse canonical Marketplace listing logic.

Representative facility contexts include:

- retail
- streamer agency
- real-estate-design-related facility
- tenant shop
- event venue seller context where supported

Facility-local seller operation
must not create a duplicate seller core.


# ============================================================
# 8. FINAL RULE
# ============================================================

Marketplace listing and seller-operation implementation must remain:

- lifecycle-explicit
- review-aware
- event-compatible
- facility-compatible
- non-duplicative with Marketplace core
