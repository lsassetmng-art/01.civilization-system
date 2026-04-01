# ============================================================
# MARKETPLACE ADMIN UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-admin-ui-implementation
component: marketplace-admin-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Marketplace admin UI
inside Civilization.

This document must align with:

- MARKETPLACE_ADMIN_ARCHITECTURE
- MARKETPLACE_ADMIN_UI_INTERFACE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE
- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE
- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE
- MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Marketplace admin UI must implement:

- listing review
- listing hold / suspend / reactivate posture
- physical-goods review supervision
- order supervision
- dispute and refund supervision
- payout hold / release supervision
- seller warning visibility
- self-trade review support


# ============================================================
# 3. MARKETPLACE DASHBOARD INITIAL LOAD RULE
# ============================================================

Marketplace admin dashboard should prioritize:

1. listing review queue summary
2. payout hold summary
3. dispute summary
4. seller warning summary
5. high-risk order summary

Queue-critical data should load first.


# ============================================================
# 4. LISTING REVIEW RULE
# ============================================================

Listing review screens must distinguish:

- publishable_now
- review_required
- blocked
- rejected
- suspended

Physical-goods listings should surface
review-specific blockers explicitly.

Event-linked sale posture should remain visible
when relevant.


# ============================================================
# 5. ORDER SUPERVISION RULE
# ============================================================

Order supervision should expose:

- payment state
- fulfillment state
- receipt state
- settlement state
- self-trade signal posture
- dispute posture

These states must remain separate
and should support operational filtering.


# ============================================================
# 6. PAYOUT HOLD / RELEASE RULE
# ============================================================

Payout screens must make clear that:

- payment_succeeded is not the same as payout_released
- receipt or fraud posture may hold payout
- dispute posture may hold payout

Release actions must require explicit confirmation
when high impact.


# ============================================================
# 7. FINAL RULE
# ============================================================

Marketplace admin UI implementation must remain:

- review-aware
- state-separated
- payout-aware
- dispute-aware
- self-trade-aware
- traceable
