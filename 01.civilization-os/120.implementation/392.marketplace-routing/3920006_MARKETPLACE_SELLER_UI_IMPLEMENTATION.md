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
