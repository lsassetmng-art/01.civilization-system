# ============================================================
# MARKETPLACE LISTING AND SELLER OPERATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-listing-and-seller-operation
component: marketplace-listing-and-seller-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for Marketplace listing behavior
and seller-side Marketplace operation
inside Civilization.

This document supplements:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE

This document defines:

- listing creation
- listing update
- listing publication
- listing suspension
- listing cancellation
- listing relisting
- sale window handling
- live-event limited sale handling
- seller operation contexts
- relation to Marketplace core

This document does not redefine:

- Marketplace core browsing flow
- external payment routing
- order settlement truth
- fulfillment truth
- raw product truth where owned elsewhere


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Marketplace seller behavior
must remain separate from
Marketplace buyer-entry behavior.

Buyer-entry architecture defines:

- how users enter Marketplace
- how payment is routed
- how Marketplace contexts are filtered

Seller-operation architecture defines:

- how goods are listed
- how listings become visible
- how listings are paused or removed
- how contextual sale conditions apply

These are connected,
but they are not the same concern.


# ============================================================
# 3. LISTING AS CANONICAL SELLER LAYER
# ============================================================

A listing is the canonical sellable Marketplace unit
as exposed to buyers.

A listing is not identical to:

- product master truth
- design master truth
- facility truth
- event truth
- payment truth

Listing is the Marketplace exposure layer
between seller-side source truth
and buyer-side Marketplace browsing.


# ============================================================
# 4. REPRESENTATIVE SELLER CONTEXTS
# ============================================================

Seller operation may originate from:

- company seller context
- facility seller context
- tenant seller context
- live-event seller context
- streamer agency seller context
- retail seller context
- real-estate-design seller context
- creator / distribution context where supported

All such seller contexts
must reuse canonical Marketplace listing operation.

They must not create separate seller-core systems
unless a future canonical redesign explicitly does so.


# ============================================================
# 5. CANONICAL LISTING LIFECYCLE
# ============================================================

The canonical listing lifecycle is:

draft
-> review_pending where required
-> approved_ready where required
-> published
-> active_sale
-> suspended or expired or sold_out or cancelled
-> relisted where allowed

A listing lifecycle may vary by product class,
but this document establishes
the canonical architectural posture.


# ============================================================
# 6. LISTING CREATION
# ============================================================

Listing creation is the seller-side act
of exposing a sellable object
to Marketplace under seller context.

Listing creation must support at minimum:

- seller identity context
- listing target item linkage
- listing title or display identity
- Marketplace exposure scope
- sale eligibility scope
- inventory or quantity scope where applicable
- sale window where applicable
- visibility posture
- publication posture

Listing creation does not require
immediate public exposure.

Draft listing is valid architecture.


# ============================================================
# 7. LISTING UPDATE
# ============================================================

Listing update must allow
seller-side modification
before and during supported sale stages
subject to policy.

Representative mutable areas may include:

- display title
- description
- images or presentation assets
- listing category
- sale window
- quantity or allocation
- seller notes
- event linkage
- visibility posture where allowed

Listing update policy
may differ by listing state.

This document defines the architectural allowance,
not exact mutation tables.


# ============================================================
# 8. LISTING PUBLICATION
# ============================================================

Publication is the act
of making a listing buyer-visible
inside Marketplace.

Publication must be explicit.

Publication may require:

- validation
- review completion
- event eligibility confirmation
- seller authorization
- inventory readiness
- payment compatibility
- distribution readiness where applicable

Publication must not be treated
as mere draft existence.


# ============================================================
# 9. LISTING SUSPENSION
# ============================================================

Suspension is the temporary act
of removing or pausing buyer availability
without deleting seller-side listing truth.

Representative causes include:

- policy hold
- review hold
- inventory issue
- event condition failure
- seller choice
- system issue
- compliance concern

Suspension must preserve listing identity
for later inspection or relisting where allowed.


# ============================================================
# 10. LISTING CANCELLATION
# ============================================================

Cancellation is the act
of terminating Marketplace sale posture
for a listing.

Cancellation is stronger than suspension.

Cancellation may mean:

- seller withdrawal
- event invalidation
- permanent stop of sale
- listing abandonment
- policy-enforced stop

Cancellation should remain visible
in seller operation history.

Cancellation should not erase
listing lineage by default.


# ============================================================
# 11. RELISTING
# ============================================================

Relisting is the act
of returning a previously unavailable listing
to active Marketplace exposure
when allowed.

Relisting may require:

- renewed validation
- renewed inventory confirmation
- renewed event eligibility
- renewed approval where required

Relisting must preserve
listing lineage or listing relation
where policy requires traceability.


# ============================================================
# 12. SALE WINDOW RULE
# ============================================================

A listing may have
time-bounded sale eligibility.

Representative sale-window structures include:

- always available
- fixed sale window
- recurring window where supported later
- event-linked window
- limited-duration release

Sale window is a listing operation rule,
not a separate Marketplace core.


# ============================================================
# 13. LIVE-EVENT LIMITED SALE RULE
# ============================================================

Live-event limited sale
is a contextual listing mode.

It may add:

- event linkage
- limited time
- purchase eligibility constraints
- quantity limits
- event-specific visuals
- event-specific fulfillment or entitlement routing

However,
live-event listing still remains
a canonical Marketplace listing.

It does not justify
a separate listing core
or separate payment core.


# ============================================================
# 14. INVENTORY AND QUANTITY RULE
# ============================================================

Listings may be:

- unlimited where policy permits
- quantity-limited
- allocation-limited
- one-time access limited
- event-seat or unit limited where applicable

Inventory or quantity control
belongs to listing operation context
or linked inventory truth,
not to payment architecture.


# ============================================================
# 15. REVIEW RELATION
# ============================================================

Listings may require review
before publication or republication.

Representative review relation includes:

- policy review
- content review
- event-specific review
- seller authorization review
- design or asset review

Review status is part of listing operation posture.

It must be clearly separated from
payment success or buyer order state.


# ============================================================
# 16. FACILITY-LOCAL SELLER OPERATION RULE
# ============================================================

Facilities that support selling behavior
may expose seller-side Marketplace operations.

Representative facility examples include:

- retail facility
- streamer agency
- real-estate-design related facility
- tenant shop
- event venue where sale is linked

Facility-local seller operation must support:

- listing create
- listing edit
- listing publish
- listing suspend
- listing cancel
- listing status review

But these actions must still use
canonical Marketplace listing logic.


# ============================================================
# 17. COMPANY / TENANT / EVENT FILTER RULE
# ============================================================

Seller operation must support contextual filtering.

Representative filters include:

- company-scoped listings
- facility-scoped listings
- tenant-scoped listings
- event-scoped listings
- live-event limited-sale listings
- product-type-scoped listings

Filtering changes view context.

It does not create a separate listing core.


# ============================================================
# 18. BUYER SIDE RELATION
# ============================================================

Published listings are consumed by
Marketplace buyer-side entry routes.

Representative chain:

seller context
-> listing create / manage
-> listing publish
-> buyer Marketplace visibility
-> external payment routing where needed
-> order result handling

Seller operation precedes buyer interaction,
but both remain connected through Marketplace core.


# ============================================================
# 19. HISTORY AND TRACEABILITY RULE
# ============================================================

Listing operation should remain traceable.

Representative traceable actions include:

- created
- edited
- submitted for review
- approved
- published
- suspended
- cancelled
- relisted
- expired
- sold_out where applicable

Traceability is important
for operations, review, and audit posture.


# ============================================================
# 20. NON-DUPLICATION RULE
# ============================================================

The following are prohibited
as separate duplicated seller cores
unless a future canonical redesign explicitly changes this.

- facility-only seller core
- live-event-only seller core
- streamer-agency-only listing core
- real-estate-design-only listing core
- tenant-only listing core
- separate review-to-sale lifecycle unrelated to Marketplace core

All seller contexts must remain
Marketplace listing contexts,
not independent Marketplace systems.


# ============================================================
# 21. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture should be followed by:

- Marketplace seller interface design
- Marketplace listing implementation design
- live-event limited-sale seller interface
- listing lifecycle model
- seller operation history model where needed

These lower-layer documents must preserve
canonical Marketplace reuse.


# ============================================================
# 22. FINAL RULE
# ============================================================

Marketplace listing and seller operation must remain:

- seller-side
- lifecycle-aware
- review-aware
- event-compatible
- facility-compatible
- company-compatible
- tenant-compatible
- traceable
- non-duplicative with Marketplace core

Publishing, suspension, cancellation,
and relisting are canonical listing operations,
not separate marketplace systems.

# ============================================================
# SUPPLEMENT A. EVENT-LINKED LIMITED SALE PRINCIPLE
# ============================================================

Event-linked limited sale
is the canonical limited-sale mode
for Marketplace listings
that are bound to an event context.

Live-event limited sale
is only one subtype
of event-linked limited sale.

Event-linked limited sale may apply to:

- live events
- exhibition events
- gallery or solo exhibition events
- screening events
- stage events
- talk events
- special venue events
- other event-linked sale contexts


# ============================================================
# SUPPLEMENT B. EVENT-LINKED LIMITED SALE CONTEXT
# ============================================================

Event-linked limited sale
does not create a separate Marketplace core.

It is a contextual listing mode
inside canonical Marketplace listing operation.

Representative contextual dimensions include:

- event_id
- event_type
- event_scope
- venue_scope
- facility_scope
- sale_window
- participant_eligibility
- quantity_limit
- per-user purchase_limit
- inventory linkage
- sold_out behavior
- event_end behavior


# ============================================================
# SUPPLEMENT C. LIVE EVENT AS SUBTYPE
# ============================================================

Live-event limited sale
must be treated as a subtype of:

- event-linked limited sale

It must not remain the only named form
of event-bound limited sale.

This preserves compatibility with:

- solo exhibition sales
- film screening sales
- venue-limited commemorative sales
- event-specific merchandise
- event-participant-only sales


# ============================================================
# SUPPLEMENT D. EXHIBITION AND SCREENING RELATION
# ============================================================

Exhibition events,
solo exhibitions,
screening events,
and similar event families
may expose limited-sale Marketplace listings
through the same canonical event-linked limited-sale structure.

These contexts may differ in:

- event duration
- venue restriction
- purchase eligibility
- product class
- quantity posture

However,
they remain Marketplace listing contexts,
not separate sale systems.


# ============================================================
# SUPPLEMENT E. QUANTITY-LIMITED SALE RULE
# ============================================================

Event-linked limited sale
may also be quantity-limited.

Representative quantity control includes:

- total quantity cap
- per-user cap
- venue allocation cap
- schedule-window cap
- sold-out state
- restock disallowed state where applicable

Quantity-limited sale remains
a listing-operation concern,
not a separate payment architecture.


# ============================================================
# SUPPLEMENT F. EVENT END RULE
# ============================================================

When an event ends,
event-linked limited-sale listings
may transition according to contextual policy such as:

- expired
- sold_out
- suspended
- relisting blocked
- relisting allowed under non-event mode where policy permits

These transitions remain part of
canonical listing lifecycle behavior.


# ============================================================
# SUPPLEMENT G. FINAL SUPPLEMENT RULE
# ============================================================

Event-linked limited sale must remain:

- canonical Marketplace listing behavior
- event-context-aware
- quantity-limit-capable
- venue-capable
- eligibility-capable
- non-duplicative with Marketplace core

Live-event sale,
exhibition sale,
screening sale,
and other event-bound sale types
must be treated as subtypes
of the same event-linked limited-sale architecture.


# ============================================================
# SUPPLEMENT H. CIVILIZATION LIVE EVENT VENUE RULE
# ============================================================

Civilization live events
currently use digital venues only.

This means:

- live-event venue participation is digital
- live-event architecture does not require
  a real-world venue model
- live-event sale context is bound to
  digital-event participation context

Digital venue scope does not restrict
the sellable product class by itself.


# ============================================================
# SUPPLEMENT I. LIVE-EVENT SALE PRODUCT CLASS RULE
# ============================================================

Live-event-linked sale may include:

- digital goods
- real-world physical goods

Therefore,
digital-event venue context
and product fulfillment type
must remain separated.

A live event may be digital-only in venue form,
while still allowing sale of:

- event-limited digital goods
- event-limited real-world physical goods


# ============================================================
# SUPPLEMENT J. DIGITAL GOODS FULFILLMENT RULE
# ============================================================

When a live-event-linked listing
is a digital good,
the listing should route into
canonical internal entitlement,
delivery,
or asset-grant logic.

Representative examples include:

- digital commemorative goods
- digital bonus items
- digital backgrounds
- digital voice assets
- digital collectible items
- digital access-linked rewards

Digital-goods handling remains
inside shared Marketplace and entitlement logic.


# ============================================================
# SUPPLEMENT K. PHYSICAL GOODS FULFILLMENT RULE
# ============================================================

When a live-event-linked listing
is a real-world physical good,
the listing should route into
shared Marketplace physical-goods handling.

Representative examples include:

- event-limited merchandise
- event-limited apparel
- event-limited printed goods
- commemorative physical items
- live-event-specific physical goods

Physical-goods handling must reuse
canonical Marketplace logistics,
receipt,
and settlement routines.

Live-event-linked physical-goods sale
does not imply
a real-world live-event venue.


# ============================================================
# SUPPLEMENT L. SEPARATION OF VENUE AND FULFILLMENT
# ============================================================

The following must remain separate:

- event venue type
- listing context
- product class
- fulfillment type
- payment routine

Representative structure:

digital live-event venue
-> event-linked limited-sale listing
-> product class decision
-> digital entitlement flow
or
-> shared physical-goods fulfillment flow

The venue being digital-only
must not force
all goods to be digital-only.


# ============================================================
# SUPPLEMENT M. FINAL LIVE-EVENT SUPPLEMENT RULE
# ============================================================

Civilization live-event sale must remain:

- digital-venue-based
- event-linked
- compatible with digital goods
- compatible with physical goods
- non-duplicative with shared Marketplace fulfillment
- non-duplicative with shared Marketplace payment routing

Digital venue,
listing context,
and fulfillment type
must remain structurally separable.

