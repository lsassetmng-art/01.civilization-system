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
