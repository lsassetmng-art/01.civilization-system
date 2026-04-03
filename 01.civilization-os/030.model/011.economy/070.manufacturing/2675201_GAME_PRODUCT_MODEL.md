# ============================================================
# GAME PRODUCT MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: game-product

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRODUCT ROLE
# ============================================================

game product defines a releasable game offering
with connected or standalone posture.


# ============================================================
# 2. PRODUCT FIELDS
# ============================================================

Recommended fields:
- product_id
- game_mode
- entitlement_profile
- update_profile
- event_support_flag
- monetization_profile
- release_state


# ============================================================
# 3. FINAL RULE
# ============================================================

A game product must explicitly declare
connected or standalone posture.
