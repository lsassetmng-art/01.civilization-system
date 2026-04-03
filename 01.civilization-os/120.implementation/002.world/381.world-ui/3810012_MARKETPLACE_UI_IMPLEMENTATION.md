# ============================================================
# MARKETPLACE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-ui-implementation
component: marketplace-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Marketplace UI entry
inside world-ui context.

This document must align with:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE
- MAP_COMMON_MENU_UI_IMPLEMENTATION


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Marketplace UI in world context must implement:

- global Marketplace entry
- filtered Marketplace entry
- event-linked Marketplace entry
- safe return to originating route
- buyer-side browsing visibility


# ============================================================
# 3. ENTRY CONTEXT RULE
# ============================================================

Marketplace may be entered from:

- common bottom menu
- facility-local filtered route
- company-filtered route
- event-filtered route
- search result
- notification

Entry context must remain visible enough
to distinguish filtered Marketplace
from global Marketplace.


# ============================================================
# 4. PAYMENT ROUTE RULE
# ============================================================

Card-based checkout must route
to external payment provider flow.

Marketplace UI may show:

- checkout readiness
- payment redirect state
- payment result posture

It must not own raw card entry.


# ============================================================
# 5. DIGITAL / PHYSICAL PRODUCT RULE
# ============================================================

Marketplace UI may expose both:

- digital goods
- physical goods

Fulfillment type must remain readable
in product and order posture.


# ============================================================
# 6. FINAL RULE
# ============================================================

Marketplace UI implementation must remain:

- context-aware
- route-safe
- externally-paid for card flows
- compatible with buyer and seller Marketplace architecture
