# ============================================================
# MARKETPLACE ADMIN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-admin
component: marketplace-admin

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for Marketplace review,
operations,
order supervision,
seller supervision,
and payout / dispute administration
inside Civilization.


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

This tool family must support:

- listing review
- listing suspension / reactivation
- physical-goods review
- order hold / release supervision
- dispute supervision
- refund supervision
- payout hold / release supervision
- self-trade review support
- seller warning visibility


# ============================================================
# 3. BUYER / SELLER SEPARATION
# ============================================================

Marketplace admin tools
must remain separate from:

- buyer Marketplace UI
- seller Marketplace UI

They supervise those layers,
but do not duplicate them.


# ============================================================
# 4. EVENT-LINKED SALE RELATION
# ============================================================

Marketplace admin tools
must also supervise:

- event-linked limited sale
- live-event-linked sale
- physical-goods event-linked sale
- review and eligibility posture
- quantity and publication posture


# ============================================================
# 5. FINAL RULE
# ============================================================

Marketplace admin architecture must remain:

- review-centered
- hold-capable
- payout-aware
- dispute-aware
- seller-supervisory
- traceable
