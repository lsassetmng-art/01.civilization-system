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
