# ============================================================
# 392 MARKETPLACE ROUTING INTEGRATED
# ============================================================

status: canonical
type: integrated
owner: Boss
prepared_by: Zero

# ============================================================
# SOURCE FILES
# ============================================================
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920001_MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920002_MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920003_MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920004_MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920005_MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.nation-ui-facility-metric-integration/3920001_NATION_UI_FACILITY_METRIC_INTEGRATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920101_NATION_BUILDER_FACILITY_METRIC_PANEL_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920102_NATION_OVERVIEW_FACILITY_METRIC_CARD_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920103_NATION_DETAIL_FACILITY_METRIC_DRILLDOWN_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920104_NATION_COMPARISON_FACILITY_METRIC_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920105_NATION_PREVIEW_PROJECTED_DELTA_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920106_NATION_UI_METRIC_PLACEMENT_RULE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/090.interface/392.marketplace-routing/3920006_MARKETPLACE_SELLER_UI_INTERFACE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920001_MARKETPLACE_ENTRY_AND_PAYMENT_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920002_MARKETPLACE_LISTING_AND_SELLER_OPERATION_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920003_MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920004_MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920005_MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920006_MARKETPLACE_SELLER_UI_IMPLEMENTATION.md



# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920001_MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE.md
# ============================================================

# ============================================================
# MARKETPLACE ENTRY AND PAYMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-entry-and-payment
component: marketplace-entry-and-payment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for Marketplace entry routing,
facility-local Marketplace entry,
live-event Marketplace entry,
and external payment routing
inside Civilization.

This document supplements existing Marketplace design.

This document defines:

- canonical Marketplace core reuse
- facility-local Marketplace entry
- company-filtered Marketplace entry
- event-filtered Marketplace entry
- live-event limited-sale entry
- external payment provider separation

This document does not redefine:

- Marketplace item truth
- order-record truth
- existing product-sale rules
- existing fulfillment truth
- existing revenue-ledger truth


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization must maintain
a single canonical Marketplace routine.

Multiple entry routes may exist,
but the Marketplace core must remain unified.

Representative entry contexts include:

- global Marketplace entry
- nation Marketplace entry
- company direct store entry
- field facility entry
- tenant Marketplace entry
- live-event limited-sale entry
- search-result entry
- notification entry

These entries must not create
independent duplicate Marketplace systems.


# ============================================================
# 3. MARKETPLACE CORE REUSE RULE
# ============================================================

Facility-local Marketplace entry
must reuse the canonical Marketplace routine.

It must not create
a separate facility-only Marketplace core.

Facility-local entry may open Marketplace
with pre-applied context filters such as:

- company_id
- facility_id
- tenant_id
- seller_scope
- event_id
- live_event_id
- sale_window scope
- item category scope

The Marketplace routine remains the same.

Only entry context differs.


# ============================================================
# 4. EXTERNAL PAYMENT PRINCIPLE
# ============================================================

Credit-card-based payment
must be processed externally.

Civilization Marketplace must not be
the primary holder of raw card data.

Civilization internal responsibility is:

- create order context
- open external payment route
- receive payment result
- apply order settlement logic
- apply entitlement, item delivery, or CIV_CASH grant
- emit revenue and accounting events where required

External payment provider responsibility is:

- card entry
- wallet entry
- authentication
- authorization
- payment completion or failure result


# ============================================================
# 5. WALLET-STYLE PAYMENT ROUTE
# ============================================================

To reduce repeated manual entry,
Marketplace may use external payment providers
that leverage existing wallet or account-backed payment methods.

Representative examples include:

- Google Pay
- Amazon Pay

Civilization does not directly use
raw stored card data from those providers.

Instead,
Civilization routes checkout
through those external payment systems
and receives result posture.


# ============================================================
# 6. INTERNAL VS EXTERNAL SETTLEMENT SEPARATION
# ============================================================

The system must separate:

- real-money external payment
- internal Marketplace settlement
- CIV_CASH handling
- internal-currency handling

Representative structure:

external real-money payment success
-> Marketplace payment success state
-> Civilization-side order confirmation
-> item grant / entitlement / fulfillment trigger
-> revenue / ledger / score effects where defined

External payment and internal settlement
must not be collapsed.


# ============================================================
# 7. LIVE-EVENT MARKETPLACE RULE
# ============================================================

Live-event-specific Marketplace entry
must reuse the same Marketplace core
and the same payment routine.

Live-event Marketplace differs by context,
not by payment system identity.

Live-event context may add:

- event linkage
- sale window
- purchase eligibility
- limited quantity
- limited duration
- event-specific catalog
- event-specific fulfillment or entitlement logic

These are contextual Marketplace constraints.

They do not justify
a separate payment architecture.


# ============================================================
# 8. FACILITY-LOCAL MARKETPLACE RULE
# ============================================================

Facilities may expose
Marketplace entry as part of facility UI
when Marketplace behavior is relevant
to that facility.

However,
the facility does not own
an independent Marketplace core.

The facility opens Marketplace
as a filtered Marketplace entry.

The filtered Marketplace view
must remain structurally compatible
with global Marketplace behavior.


# ============================================================
# 9. RETAIL FACILITY RELATION
# ============================================================

Retail and commercial facilities
may expose Marketplace entry
for company-scoped or facility-scoped selling posture.

Representative use cases include:

- direct company sale
- Marketplace sale
- supplier-linked product sale
- company store view
- filtered product catalog view

Retail-local Marketplace entry
must reuse canonical Marketplace routine
with appropriate seller or facility filter context.


# ============================================================
# 10. REAL-ESTATE-DESIGN RELATION
# ============================================================

Real-estate-related design offerings
such as property-related design items
may be sold through Marketplace.

Representative examples may include:

- building exterior design
- housing interior
- housing exterior
- design variation items
- environment-related decoration or enhancement items

If exposed from a real-estate-related facility UI,
that facility must route into
canonical Marketplace with filtered context.

It must not create
an isolated design-only payment core.


# ============================================================
# 11. STREAMER AGENCY RELATION
# ============================================================

Streamer agency facilities
may expose Marketplace entry
for ordinary goods sales
and event-linked sales.

Representative use cases include:

- streamer goods
- agency company goods
- live-event limited sale
- event-linked ordinary goods
- fulfillment-linked physical goods

Streamer-agency Marketplace entry
must reuse:

- canonical Marketplace routine
- canonical external payment routing
- canonical order-result application

Streamer agency does not own
a separate payment system.


# ============================================================
# 12. FILTERED ENTRY CONTRACT
# ============================================================

Filtered Marketplace entry should support
a reusable entry contract such as:

- entry_scope_type
- entry_scope_id
- seller_scope_type where applicable
- seller_scope_id where applicable
- event_scope_type where applicable
- event_scope_id where applicable
- item_category_scope where applicable
- sale_window_scope where applicable

The exact field names may evolve,
but filtered entry contract is required.


# ============================================================
# 13. ORDER AND RESULT HANDOFF
# ============================================================

Marketplace entry creates
purchase intention and order context.

External payment then returns
a result posture such as:

- payment_pending
- payment_succeeded
- payment_failed
- payment_cancelled
- payment_expired where applicable

Civilization must then apply:

- order confirmation
- entitlement confirmation
- fulfillment trigger where needed
- revenue and ledger effects where defined

Payment result handling is internal.

Card execution is external.


# ============================================================
# 14. UI VISIBILITY PRINCIPLE
# ============================================================

UI should make clear whether Marketplace entry is:

- global Marketplace
- company-filtered Marketplace
- facility-filtered Marketplace
- tenant-filtered Marketplace
- event-filtered Marketplace
- live-event limited-sale Marketplace

This is a context distinction only.

The Marketplace routine remains canonical.


# ============================================================
# 15. NON-DUPLICATION RULE
# ============================================================

The following are prohibited
as separate duplicated cores
unless a future canonical redesign explicitly changes this.

- retail-only Marketplace core
- real-estate-design-only Marketplace core
- streamer-agency-only payment core
- live-event-only payment core
- facility-local raw-card payment core

All such entries must reuse
canonical Marketplace and payment routing.


# ============================================================
# 16. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture should be followed by:

- Marketplace interface design
- Marketplace implementation design
- filtered Marketplace entry interface
- external payment implementation design
- live-event limited-sale interface and implementation design

These child documents must preserve
core Marketplace reuse.


# ============================================================
# 17. FINAL RULE
# ============================================================

Civilization Marketplace entry and payment must remain:

- core-reused
- context-filtered
- externally paid for card-based checkout
- live-event-compatible
- facility-entry-compatible
- company-filter-compatible
- non-duplicative in payment architecture

Facility-local and live-event Marketplace routes
must remain Marketplace contexts,
not separate Marketplace cores.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920002_MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE.md
# ============================================================

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



# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920003_MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE.md
# ============================================================

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


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920004_MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE.md
# ============================================================

# ============================================================
# MARKETPLACE ORDER RECEIPT AND SETTLEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-order-receipt-and-settlement
component: marketplace-order-receipt-and-settlement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for order status,
receipt confirmation,
settlement hold,
payout release,
refund,
and dispute posture
inside Civilization Marketplace.

This document supplements:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE
- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE

This document defines:

- separation of payment, fulfillment, receipt, and settlement
- shared receipt-confirmation posture
- payout hold and release posture
- refund and dispute posture
- common order lifecycle for digital and physical goods

This document does not redefine:

- external payment processor internals
- raw accounting ledger internals
- raw shipment provider internals


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Marketplace order architecture
must distinguish between:

- payment state
- fulfillment state
- receipt state
- settlement state
- dispute state

These states must not be collapsed
into a single opaque order status.


# ============================================================
# 3. PAYMENT STATE
# ============================================================

Representative payment states include:

- payment_pending
- payment_succeeded
- payment_failed
- payment_cancelled
- payment_expired where applicable

Payment success alone
does not finalize seller payout.


# ============================================================
# 4. FULFILLMENT STATE
# ============================================================

Representative fulfillment states include:

- not_applicable for pure digital entitlement where appropriate
- preparing
- shipped
- delivered
- ready_for_pickup where supported
- pickup_completed where supported
- fulfillment_failed where supported

Fulfillment and payment remain separate.


# ============================================================
# 5. RECEIPT STATE
# ============================================================

Representative receipt states include:

- receipt_not_required where applicable
- receipt_pending
- received_confirmed
- receipt_disputed
- receipt_timeout_resolved where policy supports it

Receipt state is especially important
for physical goods
and anti-fraud posture.


# ============================================================
# 6. SETTLEMENT STATE
# ============================================================

Representative settlement states include:

- payout_pending
- payout_hold
- payout_released
- refund_pending
- refund_processed
- dispute_hold

Settlement state must remain distinct
from payment success.


# ============================================================
# 7. COMMON ORDER LIFECYCLE
# ============================================================

Representative combined order posture:

order_created
-> payment_pending
-> payment_succeeded
-> entitlement_or_fulfillment_progress
-> receipt_pending where applicable
-> received_confirmed or equivalent closure posture
-> payout_released where allowed

Alternative branches may include:

- payment_failed
- cancelled
- dispute_hold
- refund_processed


# ============================================================
# 8. DIGITAL GOODS RELATION
# ============================================================

Digital goods may use
simplified fulfillment posture,
but should still preserve
order and settlement distinction
where financial flow requires it.

Digital delivery does not eliminate
the need for anti-fraud
or settlement logic.


# ============================================================
# 9. PHYSICAL GOODS RELATION
# ============================================================

Physical goods require
explicit receipt posture.

Marketplace must support
receipt-confirmation logic
similar in spirit to
receipt-confirmed transaction systems.

This is a shared Marketplace mechanism,
not an event-only mechanism.


# ============================================================
# 10. PAYOUT RELEASE RULE
# ============================================================

Seller payout must not be released
purely on buyer payment success
when anti-fraud posture requires hold.

Representative payout release conditions may include:

- payment succeeded
- order not cancelled
- no unresolved dispute
- receipt confirmed or equivalent hold release condition
- cooldown elapsed where policy requires

This document establishes the separation,
not the exact final release formula.


# ============================================================
# 11. DISPUTE RULE
# ============================================================

Marketplace must support dispute posture
as a first-class architecture concern.

Representative dispute effects include:

- payout hold
- manual review
- receipt state override
- refund eligibility
- seller-operation alerting

Dispute must not be treated
as a generic note only.


# ============================================================
# 12. REFUND RULE
# ============================================================

Refund posture must remain explicit.

Representative refund states include:

- refund_pending
- refund_approved
- refund_processed
- refund_denied where policy allows denial posture

Refund is not identical
to order cancellation only.


# ============================================================
# 13. COMMON USE PRINCIPLE
# ============================================================

The following must reuse
this common order / receipt / settlement architecture.

Representative contexts include:

- standard Marketplace orders
- event-linked limited sale orders
- physical-goods orders
- digital-goods orders
- company direct store orders
- facility-scoped Marketplace orders

Order settlement architecture is shared.


# ============================================================
# 14. FINAL RULE
# ============================================================

Marketplace order / receipt / settlement architecture must remain:

- multi-state
- anti-fraud-aware
- receipt-aware
- payout-hold-capable
- refund-capable
- dispute-capable
- shared across Marketplace contexts


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.marketplace-routing/3920005_MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# MARKETPLACE ANTI-SELF-TRADE AND IDENTITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-anti-self-trade-and-identity
component: marketplace-anti-self-trade-and-identity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for duplicate-user prohibition,
identity linkage,
and anti-self-trade control
inside Civilization and Civilization Marketplace.

This document defines:

- duplicate registration prohibition
- self-trade prohibition
- beneficial-control-aware trade blocking
- hard-block vs review-hold vs monitoring separation
- identity and control relation architecture

This document does not redefine:

- raw external login provider internals
- KYC provider internals
- payment processor internals
- enforcement penalty policy details


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization prohibits
duplicate registration
of the same user.

Marketplace prohibits
self-trading by the same user.

This includes direct and indirect
seller contexts controlled
by the same underlying user.

The purpose includes:

- anti-cashout protection
- anti-circular-sale protection
- anti-fake-volume protection
- anti-abuse protection


# ============================================================
# 3. DUPLICATE REGISTRATION PROHIBITION
# ============================================================

Duplicate registration prohibition
applies to the same underlying person or user principal,
even when different login routes are used.

Representative login routes include:

- native account login
- Google login
- Yahoo login
- future external identity providers

External-provider variation
must not allow duplicate-user bypass.


# ============================================================
# 4. SELF-TRADE PROHIBITION
# ============================================================

Marketplace prohibits
buyer and seller being the same underlying user.

This includes:

- same buyer_user_id and seller_user_id
- same owner_user_id across buyer and seller context
- same controlling_user_id across buyer and seller context
- same beneficial owner across buyer and seller context
- same payout beneficiary where policy treats that as controlling identity evidence


# ============================================================
# 5. CONTROL RELATION PRINCIPLE
# ============================================================

Self-trade control must consider:

- direct identity
- ownership identity
- controlling identity
- payout-beneficiary identity
- beneficial-owner identity

Marketplace must not rely only on
surface user_id comparison.


# ============================================================
# 6. DECISION LAYERS
# ============================================================

Anti-duplicate and anti-self-trade decisions
must support at least three layers.

1. hard block
2. review hold
3. monitoring only

These layers must remain distinct.

Not every suspicious match
should be treated as
hard block automatically.


# ============================================================
# 7. HARD BLOCK PRINCIPLE
# ============================================================

Hard block applies when
same-user or same-controller identity
is architecturally strong enough
to treat the trade as self-trade
or the registration as duplicate identity.

Representative examples include:

- same linked identity principal
- same canonical user principal
- same verified beneficial controller
- same payout beneficiary under strict control policy


# ============================================================
# 8. REVIEW HOLD PRINCIPLE
# ============================================================

Review hold applies when
identity collision is strongly suspected
but not yet certain enough
for irreversible block.

Representative examples include:

- strong account overlap indicators
- same payment instrument token posture where policy allows use
- same address and identity cluster
- same payout destination cluster
- suspicious reciprocal trade pattern
- suspicious circular sale pattern

Review hold preserves anti-abuse control
without assuming certainty too early.


# ============================================================
# 9. MONITORING PRINCIPLE
# ============================================================

Monitoring-only posture applies when
signals are weak,
indirect,
or insufficient on their own.

Representative weak signals may include:

- shared IP only
- shared device family only
- shared region only
- timing similarity only

Weak signals alone
must not become automatic hard block.


# ============================================================
# 10. IDENTITY EVIDENCE FAMILIES
# ============================================================

Representative identity evidence families include:

- external identity principal
- canonical user linkage
- email linkage
- phone linkage
- KYC identity linkage where supported
- payout beneficiary linkage
- payment instrument fingerprint linkage where policy allows
- address linkage
- device fingerprint linkage
- behavioral linkage
- seller beneficial-owner linkage

This document does not define
final evidence weights.

It defines the allowed evidence architecture.


# ============================================================
# 11. BUYER / SELLER CONTEXT RESOLUTION
# ============================================================

Before order acceptance,
Marketplace must be able to resolve
seller-side control context such as:

- seller user
- owner user
- controlling user
- beneficial owner
- payout beneficiary

Only then can anti-self-trade checks
be applied meaningfully.


# ============================================================
# 12. ORDER GATING POSITION
# ============================================================

Anti-self-trade checks must occur
before irreversible purchase progression
into final payment commitment
where possible.

Representative sequence:

resolve buyer identity
-> resolve seller control identity
-> apply hard-block rules
-> apply review-hold rules
-> apply risk scoring
-> allow or hold or block
-> only then continue to payment route


# ============================================================
# 13. REGISTRATION GATING POSITION
# ============================================================

Duplicate-user checks must occur
before final account creation
or before final new-account activation
where policy allows staging.

If a probable duplicate is found,
the system may:

- link to existing account
- block duplicate creation
- place registration into review hold

This depends on certainty posture.


# ============================================================
# 14. COMMON USE PRINCIPLE
# ============================================================

These controls are shared
across Civilization and Marketplace.

They must apply to:

- account registration
- seller context creation where relevant
- listing publication where relevant
- order acceptance
- payout release

This is not only an order-time rule.


# ============================================================
# 15. FINAL RULE
# ============================================================

Civilization anti-duplicate and anti-self-trade architecture must remain:

- identity-aware
- control-aware
- beneficial-owner-aware
- layered in block / review / monitor posture
- shared across account and Marketplace systems
- resistant to simple cashout-abuse patterns


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/392.nation-ui-facility-metric-integration/3920001_NATION_UI_FACILITY_METRIC_INTEGRATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# NATION UI FACILITY METRIC INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-ui-facility-metric-integration
component: nation-ui-facility-metric-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical integration architecture
for injecting facility-derived nation metrics
into Nation Builder,
Nation Overview,
Nation Detail,
and Nation Comparison UI.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Nation UI must expose facility-derived metrics
without collapsing them into abstract noise.

Users must be able to see:

- current nation service coverage
- infrastructure and market indicators
- city and district imbalance
- projected changes from facility additions or removals


# ============================================================
# 3. REQUIRED UI TARGETS
# ============================================================

required_ui_targets:
- nation_builder
- nation_overview
- nation_detail
- nation_comparison
- nation_preview


# ============================================================
# 4. FINAL RULE
# ============================================================

Facility-derived nation metrics
must remain visible enough
to guide nation design decisions.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920101_NATION_BUILDER_FACILITY_METRIC_PANEL_MODEL.md
# ============================================================

# ============================================================
# NATION BUILDER FACILITY METRIC PANEL MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-builder-facility-metric-panel

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PANEL BLOCKS
# ============================================================

panel_blocks:
- service_coverage_summary
- infrastructure_summary
- market_legibility_summary
- civic_visibility_summary
- district_imbalance_summary
- projected_change_summary


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- current_metric_set
- projected_metric_set
- strongest_dimension
- weakest_dimension
- top_driver_facility_types
- missing_facility_hint_set
- warning_state


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation Builder must show
what the current nation looks like
and what the next build decision may change.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920102_NATION_OVERVIEW_FACILITY_METRIC_CARD_MODEL.md
# ============================================================

# ============================================================
# NATION OVERVIEW FACILITY METRIC CARD MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-overview-facility-metric-card

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CARD CONTENT
# ============================================================

card_content:
- health_access
- education_access
- commerce_access
- finance_access
- transport_access
- market_legibility
- infrastructure_score


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- nation overview uses compact cards
- only strongest and weakest drivers may be shown
- cards may link to expanded nation detail


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation overview should remain concise
while still showing facility-derived state.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920103_NATION_DETAIL_FACILITY_METRIC_DRILLDOWN_MODEL.md
# ============================================================

# ============================================================
# NATION DETAIL FACILITY METRIC DRILLDOWN MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-detail-facility-metric-drilldown

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DRILLDOWN BLOCKS
# ============================================================

drilldown_blocks:
- full_service_coverage_table
- infrastructure_and_market_metric_table
- city_rollup_view
- district_rollup_view
- top_contributing_facilities
- recent_change_log
- missing_service_gaps


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation detail must allow users
to trace nation metrics
back to actual facility presence and gaps.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920104_NATION_COMPARISON_FACILITY_METRIC_MODEL.md
# ============================================================

# ============================================================
# NATION COMPARISON FACILITY METRIC MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-comparison-facility-metric

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMPARISON DIMENSIONS
# ============================================================

comparison_dimensions:
- health_access
- education_access
- commerce_access
- finance_access
- recruitment_access
- transport_access
- market_legibility
- civic_visibility
- infrastructure_score
- national_prestige
- stability_signal


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- nation comparison uses normalized comparison values
- strongest and weakest relative positions should be visible
- facility-driven causes may be summarized, not fully expanded


# ============================================================
# 3. FINAL RULE
# ============================================================

Comparison should show
how facility ecology changes
nation-level outcomes.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920105_NATION_PREVIEW_PROJECTED_DELTA_MODEL.md
# ============================================================

# ============================================================
# NATION PREVIEW PROJECTED DELTA MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-preview-projected-delta

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- source_action_type
- source_facility_type
- metric_dimension
- current_value
- projected_value
- delta_value
- delta_direction
- explanation_summary


# ============================================================
# 2. SOURCE ACTION TYPES
# ============================================================

source_action_types:
- add_facility
- remove_facility
- replace_facility
- suspend_facility
- reopen_facility


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview deltas must explain
what is likely to change
before the user commits the action.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/392.nation-ui-facility-metric-integration/3920106_NATION_UI_METRIC_PLACEMENT_RULE_MODEL.md
# ============================================================

# ============================================================
# NATION UI METRIC PLACEMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-ui-metric-placement-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PLACEMENT RULES
# ============================================================

placement_rules:
- nation_builder shows current + projected metric panels
- nation_overview shows compact current metrics only
- nation_detail shows current + rollup + driver views
- nation_comparison shows normalized current metrics only
- nation_preview shows projected deltas only


# ============================================================
# 2. FINAL RULE
# ============================================================

Each UI surface must show
only the metric depth appropriate
to its decision context.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/090.interface/392.marketplace-routing/3920006_MARKETPLACE_SELLER_UI_INTERFACE.md
# ============================================================

# ============================================================
# MARKETPLACE SELLER UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: marketplace-seller-ui-interface
component: marketplace-seller-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the seller-side UI interface
for Civilization Marketplace.

This document must align with:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE
- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE
- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE
- MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE

This document defines:

- seller entry screens
- listing creation and edit screens
- listing lifecycle screens
- sale-window and event-linked sale screens
- order and fulfillment visibility
- settlement and payout visibility
- seller warning and hold visibility


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical seller screens:

- marketplace_seller_home_screen
- marketplace_listing_list_screen
- marketplace_listing_detail_screen
- marketplace_listing_create_screen
- marketplace_listing_edit_screen
- marketplace_listing_publish_review_screen
- marketplace_listing_lifecycle_screen
- marketplace_inventory_and_quantity_screen
- marketplace_event_linked_sale_screen
- marketplace_physical_goods_review_screen
- marketplace_order_management_screen
- marketplace_fulfillment_management_screen
- marketplace_receipt_and_settlement_screen
- marketplace_seller_warning_screen


# ============================================================
# 3. SELLER HOME SCREEN
# ============================================================

screen_id: marketplace_seller_home_screen
route_key: marketplace/seller/home

visible_sections:
- seller_identity_summary_section
- seller_context_summary_section
- listing_status_summary_section
- order_status_summary_section
- payout_status_summary_section
- warning_summary_section

actions:
- open_listing_list
- open_create_listing
- open_order_management
- open_receipt_and_settlement
- open_warning_detail


# ============================================================
# 4. LISTING LIST SCREEN
# ============================================================

screen_id: marketplace_listing_list_screen
route_key: marketplace/seller/listings

visible_sections:
- listing_filter_section
- listing_state_summary_section
- listing_list_section

supported_filters:
- seller_context
- listing_state
- event_scope
- product_class
- review_state
- fulfillment_type

actions:
- open_listing_detail
- open_create_listing
- apply_filter
- clear_filter


# ============================================================
# 5. LISTING DETAIL SCREEN
# ============================================================

screen_id: marketplace_listing_detail_screen
route_key: marketplace/seller/listing-detail

visible_sections:
- listing_identity_section
- listing_context_section
- listing_state_section
- sale_window_section
- quantity_section
- review_posture_section
- fulfillment_posture_section
- warning_section

actions:
- open_edit_listing
- open_publish_review
- suspend_listing
- cancel_listing
- relist_listing where allowed
- open_inventory_and_quantity
- open_event_linked_sale
- open_physical_goods_review where applicable


# ============================================================
# 6. LISTING CREATE SCREEN
# ============================================================

screen_id: marketplace_listing_create_screen
route_key: marketplace/seller/create

visible_sections:
- seller_context_section
- product_class_section
- listing_identity_input_section
- category_input_section
- visibility_input_section
- digital_or_physical_input_section
- sale_window_input_section
- quantity_input_section
- event_linkage_input_section where applicable

actions:
- save_as_draft
- continue_to_edit
- cancel_create


# ============================================================
# 7. LISTING EDIT SCREEN
# ============================================================

screen_id: marketplace_listing_edit_screen
route_key: marketplace/seller/edit

visible_sections:
- editable_listing_identity_section
- editable_description_section
- editable_asset_section
- editable_category_section
- editable_sale_window_section
- editable_quantity_section
- editable_event_linkage_section
- editable_fulfillment_section
- validation_warning_section

actions:
- save_listing
- cancel_edit
- submit_for_review where required
- open_publish_review


# ============================================================
# 8. LISTING PUBLISH REVIEW SCREEN
# ============================================================

screen_id: marketplace_listing_publish_review_screen
route_key: marketplace/seller/publish-review

visible_sections:
- listing_publish_summary_section
- blocking_error_section
- warning_section
- review_requirement_section
- publication_action_section

actions:
- publish_listing where allowed
- submit_for_review where required
- back_to_edit
- cancel_publication


# ============================================================
# 9. LISTING LIFECYCLE SCREEN
# ============================================================

screen_id: marketplace_listing_lifecycle_screen
route_key: marketplace/seller/lifecycle

visible_sections:
- lifecycle_state_section
- lifecycle_history_section
- review_transition_section
- publish_transition_section
- suspend_transition_section
- cancel_transition_section
- relist_transition_section where allowed

actions:
- publish_listing
- suspend_listing
- cancel_listing
- relist_listing
- back_to_listing_detail


# ============================================================
# 10. INVENTORY AND QUANTITY SCREEN
# ============================================================

screen_id: marketplace_inventory_and_quantity_screen
route_key: marketplace/seller/inventory

visible_sections:
- inventory_summary_section
- total_stock_section
- reservable_stock_section
- sold_out_posture_section
- quantity_limit_section
- per_user_limit_section

actions:
- update_inventory
- update_quantity_limit
- update_per_user_limit
- save_inventory
- back_to_listing_detail


# ============================================================
# 11. EVENT-LINKED SALE SCREEN
# ============================================================

screen_id: marketplace_event_linked_sale_screen
route_key: marketplace/seller/event-linked-sale

visible_sections:
- event_link_summary_section
- event_type_section
- event_scope_section
- sale_window_section
- participant_eligibility_section
- event_quantity_section
- digital_venue_note_section

actions:
- save_event_linkage
- remove_event_linkage
- back_to_listing_detail

note:
- live_event_limited_sale is a subtype of event-linked limited sale
- event venue may be digital-only while goods may be digital or physical


# ============================================================
# 12. PHYSICAL GOODS REVIEW SCREEN
# ============================================================

screen_id: marketplace_physical_goods_review_screen
route_key: marketplace/seller/physical-review

visible_sections:
- physical_goods_summary_section
- logistics_readiness_section
- inventory_plausibility_section
- review_requirement_section
- restricted_item_warning_section
- review_result_section

actions:
- submit_for_physical_review
- back_to_listing_detail


# ============================================================
# 13. ORDER MANAGEMENT SCREEN
# ============================================================

screen_id: marketplace_order_management_screen
route_key: marketplace/seller/orders

visible_sections:
- order_filter_section
- order_list_section
- payment_state_section
- fulfillment_state_section
- receipt_state_section
- dispute_state_section

actions:
- open_order_detail where supported
- open_fulfillment_management
- open_receipt_and_settlement
- apply_order_filter
- clear_order_filter


# ============================================================
# 14. FULFILLMENT MANAGEMENT SCREEN
# ============================================================

screen_id: marketplace_fulfillment_management_screen
route_key: marketplace/seller/fulfillment

visible_sections:
- fulfillment_filter_section
- preparing_state_section
- shipped_state_section
- delivered_state_section
- pickup_state_section where supported
- fulfillment_failure_section where supported

actions:
- mark_preparing where supported
- mark_shipped where supported
- update_fulfillment_posture
- back_to_order_management


# ============================================================
# 15. RECEIPT AND SETTLEMENT SCREEN
# ============================================================

screen_id: marketplace_receipt_and_settlement_screen
route_key: marketplace/seller/settlement

visible_sections:
- payout_pending_section
- payout_hold_section
- payout_released_section
- dispute_hold_section
- refund_section
- received_confirmed_section
- receipt_pending_section

actions:
- open_order_management
- open_warning_detail
- back_to_seller_home


# ============================================================
# 16. SELLER WARNING SCREEN
# ============================================================

screen_id: marketplace_seller_warning_screen
route_key: marketplace/seller/warnings

visible_sections:
- review_hold_warning_section
- listing_block_warning_section
- payout_hold_warning_section
- self_trade_warning_section
- duplicate_identity_warning_section
- compliance_warning_section

actions:
- open_related_listing
- open_related_order
- back_to_seller_home


# ============================================================
# 17. FINAL RULE
# ============================================================

Marketplace seller UI must remain:

- seller-operation-centered
- listing-lifecycle-aware
- event-compatible
- physical-goods-compatible
- settlement-visible
- warning-visible
- non-duplicative with Marketplace buyer UI


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920001_MARKETPLACE_ENTRY_AND_PAYMENT_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MARKETPLACE ENTRY AND PAYMENT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-entry-and-payment-implementation
component: marketplace-entry-and-payment-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Marketplace entry routing
and external payment routing
inside Civilization.

This document must align with:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This implementation must support:

- global Marketplace entry
- filtered Marketplace entry
- event-linked Marketplace entry
- external card-payment routing
- payment result return handling


# ============================================================
# 3. ENTRY CONTEXT RULE
# ============================================================

Marketplace entry context may include:

- global
- company-filtered
- facility-filtered
- tenant-filtered
- event-filtered
- live-event-linked
- search-result-linked
- notification-linked

Entry context must be preserved
through buyer browsing flow.


# ============================================================
# 4. EXTERNAL PAYMENT RULE
# ============================================================

Card-based checkout must use
external payment providers.

Representative external wallet-style providers may include:

- Google Pay
- Amazon Pay

Marketplace must not own raw card entry.

It should own:

- checkout context creation
- external redirect or handoff
- payment result handling


# ============================================================
# 5. PAYMENT RESULT RULE
# ============================================================

Representative payment results include:

- payment_pending
- payment_succeeded
- payment_failed
- payment_cancelled
- payment_expired where applicable

These results must be handed into
order / receipt / settlement logic,
not treated as final commerce closure by themselves.


# ============================================================
# 6. FINAL RULE
# ============================================================

Marketplace entry and payment implementation must remain:

- context-aware
- externally-paid for card flows
- result-explicit
- shared across Marketplace contexts


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920002_MARKETPLACE_LISTING_AND_SELLER_OPERATION_IMPLEMENTATION.md
# ============================================================

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


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920003_MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_IMPLEMENTATION.md
# ============================================================

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


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920004_MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MARKETPLACE ORDER RECEIPT AND SETTLEMENT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-order-receipt-and-settlement-implementation
component: marketplace-order-receipt-and-settlement-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for order state,
receipt confirmation,
payout hold,
payout release,
refund,
and dispute handling
inside Civilization Marketplace.

This document must align with:

- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE
- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE


# ============================================================
# 2. IMPLEMENTATION POSITION
# ============================================================

Representative chain:

order_created
-> payment posture
-> fulfillment or entitlement posture
-> receipt posture
-> settlement posture
-> payout release or refund closure

These phases must remain separate.


# ============================================================
# 3. PAYMENT TO SETTLEMENT SEPARATION RULE
# ============================================================

Payment success must not automatically mean:

- receipt confirmed
- payout released
- dispute cleared

Implementation must preserve
separate progression between those states.


# ============================================================
# 4. RECEIPT CONFIRMATION RULE
# ============================================================

For flows that require receipt posture,
implementation should support:

- receipt_pending
- received_confirmed
- receipt_disputed
- timeout-based resolution where policy allows

Receipt confirmation should gate
payout release when anti-fraud posture requires it.


# ============================================================
# 5. PAYOUT HOLD RULE
# ============================================================

Payout hold should be supported when:

- receipt is still pending
- dispute is open
- self-trade risk or fraud review is open
- refund review is open
- policy cooldown is not yet complete

Payout hold must remain explicit.


# ============================================================
# 6. PAYOUT RELEASE RULE
# ============================================================

Representative payout release conditions may include:

- payment succeeded
- no hard fraud block
- no unresolved dispute
- required receipt posture satisfied
- required cooldown satisfied

This document defines implementation order,
not the final financial policy constants.


# ============================================================
# 7. REFUND RULE
# ============================================================

Refund handling must remain separate from:

- cancellation
- payout release
- dispute resolution

Representative refund flow:

refund_requested
-> refund_review
-> refund_approved or denied
-> refund_processed


# ============================================================
# 8. DISPUTE RULE
# ============================================================

Dispute handling must support:

- dispute open
- payout hold
- evidence collection where supported
- dispute resolution
- downstream refund or release action

Dispute must be a first-class implementation path.


# ============================================================
# 9. DIGITAL VS PHYSICAL RULE
# ============================================================

Digital and physical goods may differ
in receipt and fulfillment posture,
but must still reuse
the shared order / settlement architecture.

The system should not fork
into separate unrelated settlement cores.


# ============================================================
# 10. FINAL RULE
# ============================================================

Order / receipt / settlement implementation must remain:

- multi-state
- hold-capable
- payout-safe
- refund-capable
- dispute-capable
- shared across Marketplace contexts


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920005_MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MARKETPLACE ANTI-SELF-TRADE AND IDENTITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-anti-self-trade-and-identity-implementation
component: marketplace-anti-self-trade-and-identity-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for duplicate-user prevention,
identity linkage handling,
and anti-self-trade control
inside Civilization and Marketplace.

This document must align with:

- MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE
- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE


# ============================================================
# 2. DECISION LAYERS
# ============================================================

Implementation must support
three distinct decision layers:

- hard_block
- review_hold
- monitoring_only

These layers must remain separate
and must not be collapsed
into one opaque fraud outcome.


# ============================================================
# 3. REGISTRATION CHECK POSITION
# ============================================================

Before account creation or activation,
the system should perform duplicate checks against:

- linked external identity principal
- canonical user linkage
- email
- phone
- KYC identity where supported
- payout identity where relevant
- strong identity cluster posture

If hard-match criteria are met,
duplicate registration must be blocked
or linked to existing account instead of duplicated.


# ============================================================
# 4. ORDER CHECK POSITION
# ============================================================

Before irreversible purchase progression,
the system should perform:

- buyer identity resolution
- seller control resolution
- owner / controller comparison
- beneficial owner comparison
- payout beneficiary comparison
- risk score evaluation

Only after these checks
should payment progression continue.


# ============================================================
# 5. HARD BLOCK RULE
# ============================================================

Implementation should hard block
when same-user or same-controller evidence
is strong enough.

Representative hard-block examples include:

- same canonical user principal
- same linked external identity principal
- same verified beneficial owner
- buyer_user_id equals seller_user_id
- buyer controls seller context directly
- seller payout beneficiary matches buyer identity under strict policy

Hard block must stop:

- duplicate registration
or
- self-trade purchase progression


# ============================================================
# 6. REVIEW HOLD RULE
# ============================================================

Implementation should use review hold
for strong but not fully certain suspicion.

Representative review-hold signals may include:

- same email
- same phone
- same address cluster
- same payment instrument fingerprint where policy allows
- same payout destination cluster
- same device fingerprint cluster
- suspicious reciprocal trading
- suspicious circular trading
- suspicious high-risk cashout posture

Review hold should block payout
and may block order continuation
depending on policy.


# ============================================================
# 7. MONITORING RULE
# ============================================================

Weak signals alone should remain
monitoring-only unless combined strongly.

Representative weak signals include:

- same IP only
- same region only
- same device family only
- same timing pattern only

Monitoring signals may increase risk score,
but should not alone create hard block.


# ============================================================
# 8. SELLER CONTROL RESOLUTION RULE
# ============================================================

Before anti-self-trade decision,
seller context resolution should retrieve
or derive where available:

- seller_user_id
- owner_user_id
- controlling_user_id
- beneficial_owner_id
- payout_beneficiary_id

Without seller control resolution,
self-trade detection remains incomplete.


# ============================================================
# 9. SCORING RULE
# ============================================================

Implementation may combine
hard rules and risk scoring.

Representative flow:

- apply hard block rules first
- if not blocked,
  calculate suspicion score
- if score exceeds hold threshold,
  apply review_hold
- if score is elevated but below hold threshold,
  apply monitoring_only
- otherwise allow

The exact thresholds may be policy-tuned later.


# ============================================================
# 10. TRADE GATING RESULT RULE
# ============================================================

Representative trade gating results include:

- allow
- allow_with_monitoring
- review_hold
- hard_block

These results should be usable by:

- order progression
- payout release logic
- review case generation
- alert systems


# ============================================================
# 11. PAYOUT RELATION RULE
# ============================================================

If self-trade suspicion remains unresolved,
payout should not be released.

Representative linkage:

review_hold
-> order may be held or allowed conditionally
-> payout_hold remains active
-> manual review outcome
-> payout release or refund / cancellation path


# ============================================================
# 12. DUPLICATE ACCOUNT RELATION RULE
# ============================================================

If duplicate registration is strongly suspected,
the implementation may:

- block new account creation
- require review
- merge by link to existing identity where policy allows

Duplicate-user prevention
must work across native and external login routes.


# ============================================================
# 13. TRACEABILITY RULE
# ============================================================

Identity-control decisions should remain traceable.

Representative traceable outputs include:

- decision layer used
- matched evidence families
- seller context resolution posture
- risk score posture where supported
- review case creation
- payout hold linkage

This improves auditability and review quality.


# ============================================================
# 14. FINAL RULE
# ============================================================

Anti-self-trade and identity implementation must remain:

- layered
- traceable
- pre-payment-aware
- pre-payout-aware
- seller-control-aware
- duplicate-registration-aware
- resistant to cashout-abuse patterns


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/392.marketplace-routing/3920006_MARKETPLACE_SELLER_UI_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MARKETPLACE SELLER UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-seller-ui-implementation
component: marketplace-seller-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for seller-side Marketplace UI
inside Civilization.

This document must align with:

- MARKETPLACE_SELLER_UI_INTERFACE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_IMPLEMENTATION
- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_IMPLEMENTATION
- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_IMPLEMENTATION
- MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_IMPLEMENTATION


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Seller UI implementation must support:

- seller-context-aware entry
- listing lifecycle management
- event-linked sale configuration
- digital / physical product branching
- physical-goods review submission
- order, fulfillment, and settlement monitoring
- warning and hold visibility


# ============================================================
# 3. SELLER HOME INITIAL LOAD RULE
# ============================================================

Seller home should prioritize:

1. seller identity context
2. listing status summary
3. order status summary
4. payout status summary
5. warning summary

Seller home should become usable
before deep listing or order data is fully expanded,
if summary-critical data is available.


# ============================================================
# 4. LISTING LIST INITIAL LOAD RULE
# ============================================================

Listing list should prioritize:

1. listing state groups
2. draft count
3. review_pending count
4. published count
5. suspended / cancelled count
6. filter readiness

List should support seller-context filtering
without requiring separate seller cores.


# ============================================================
# 5. CREATE LISTING RULE
# ============================================================

Create listing flow must remain explicit.

Representative sequence:

seller_home
-> create_listing
-> save_as_draft
-> continue_to_edit
-> publish_review where desired

Create flow must support:

- seller context selection or preset
- digital vs physical product class
- event-linked sale posture where applicable
- quantity and sale-window posture


# ============================================================
# 6. EDIT LISTING RULE
# ============================================================

Edit listing must preserve
listing identity and lifecycle posture.

Editable areas may include:

- title
- description
- presentation assets
- category
- event linkage
- sale window
- quantity
- fulfillment posture

Unsaved-change detection should be supported.


# ============================================================
# 7. PUBLISH / REVIEW RULE
# ============================================================

Publish review must distinguish:

- publishable_now
- review_required
- blocked
- invalid

If physical fulfillment is used,
review submission should be required
before publication when policy says so.

Publish must never silently bypass
review requirements.


# ============================================================
# 8. LISTING LIFECYCLE ACTION RULE
# ============================================================

Lifecycle actions must remain explicit.

Representative actions:

- publish
- suspend
- cancel
- relist

These actions must result in visible lifecycle state change
and traceable lifecycle history.


# ============================================================
# 9. INVENTORY AND QUANTITY RULE
# ============================================================

Inventory UI must keep visible:

- total stock
- reservable stock
- remaining stock where supported
- quantity limits
- per-user limits
- sold-out posture

Inventory updates must not silently oversell.

If a quantity update creates conflict,
the UI must show explicit blocking or warning state.


# ============================================================
# 10. EVENT-LINKED SALE RULE
# ============================================================

Event-linked sale UI must support:

- event association
- event type visibility
- event scope visibility
- sale window
- participant eligibility
- quantity limitation
- digital venue note

The UI must preserve the rule that
live-event sale is one subtype of event-linked limited sale.

The UI must also preserve the rule that
digital event venue
does not force digital goods only.


# ============================================================
# 11. DIGITAL / PHYSICAL PRODUCT BRANCH RULE
# ============================================================

Seller UI must clearly branch by product class.

Digital goods branch may route into:

- entitlement-oriented posture
- internal delivery posture

Physical goods branch must route into:

- review submission
- inventory plausibility
- fulfillment readiness
- shipment-oriented order visibility

Branching must remain explicit.


# ============================================================
# 12. PHYSICAL GOODS REVIEW RULE
# ============================================================

If the listing uses physical fulfillment,
seller UI should expose:

- review required posture
- review submitted posture
- review blocked posture
- review passed posture

Seller must be able to understand
why publication is blocked
if review has not passed.


# ============================================================
# 13. ORDER MANAGEMENT RULE
# ============================================================

Order management should prioritize:

1. payment state visibility
2. fulfillment state visibility
3. receipt state visibility
4. dispute state visibility

Seller must be able to filter and inspect
order posture by meaningful operational state.


# ============================================================
# 14. FULFILLMENT MANAGEMENT RULE
# ============================================================

Fulfillment management should support
state updates where seller-side action is permitted.

Representative states include:

- preparing
- shipped
- delivered
- ready_for_pickup where supported
- pickup_completed where supported
- fulfillment_failed where supported

Fulfillment UI must remain separate
from payout release logic.


# ============================================================
# 15. RECEIPT AND SETTLEMENT RULE
# ============================================================

Receipt and settlement UI must expose:

- payout_pending
- payout_hold
- payout_released
- receipt_pending
- received_confirmed
- dispute_hold
- refund posture

Seller must be able to see
that payment success alone
does not automatically mean payout release.


# ============================================================
# 16. WARNING AND HOLD RULE
# ============================================================

Seller warning UI must expose
operationally important holds and warnings such as:

- review hold
- listing blocked
- payout hold
- dispute hold
- self-trade warning
- duplicate-identity warning
- compliance or restricted-item warning

Warnings must not be hidden
inside unrelated screens only.


# ============================================================
# 17. SELF-TRADE / IDENTITY RELATION RULE
# ============================================================

Seller UI does not decide anti-self-trade truth,
but it must surface relevant results.

Representative visible seller outcomes include:

- listing blocked from publication
- order held
- payout held
- review requested
- identity clarification required where supported

Seller UI must preserve explicitness
for these outcomes.


# ============================================================
# 18. RETURN / CONTEXT RULE
# ============================================================

Seller-side UI should preserve:

- seller context
- listing context
- event context where applicable
- order context where applicable

Return behavior must remain predictable
within seller operations.


# ============================================================
# 19. FINAL RULE
# ============================================================

Marketplace seller UI implementation must remain:

- seller-context-aware
- lifecycle-explicit
- product-class-aware
- review-aware
- order-visible
- settlement-visible
- warning-visible
- compatible with shared Marketplace core
