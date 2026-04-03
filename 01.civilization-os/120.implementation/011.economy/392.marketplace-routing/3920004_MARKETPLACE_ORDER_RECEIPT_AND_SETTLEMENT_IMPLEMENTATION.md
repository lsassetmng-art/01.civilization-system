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
