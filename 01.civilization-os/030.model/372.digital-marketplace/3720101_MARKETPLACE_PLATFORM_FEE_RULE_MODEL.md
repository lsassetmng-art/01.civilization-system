# ============================================================
# MARKETPLACE PLATFORM FEE RULE MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-platform-fee-rule

owner: Boss
prepared_by: Zero


# FEE RULE

default_platform_fee_rate:
- 0.30

preferred_platform_fee_rate:
- 0.20


# APPLICABILITY

applies_to:
- civilization_marketplace_asset_sale
- civilization_marketplace_product_sale
- civilization_marketplace_app_sale_where_allowed


# EXCLUSION

does_not_apply_to:
- streaming_live_event_fee_rule
- non_marketplace_internal_transfer


# FINAL RULE

Marketplace platform fee
must resolve to either 30% or 20%.
