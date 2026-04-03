# ============================================================
# STREAMER AGENCY ORDINARY_GOODS MODEL
# ============================================================

status: canonical
layer: model
scope: streamer-agency-and-streaming-commerce-bridge
component: streamer-agency-ordinary-goods

owner: Boss
prepared_by: Zero


# GOODS TYPE

ordinary_goods_examples:
- streamer_apparel
- streamer_accessory
- streamer_poster
- streamer_book
- streamer_physical_collectible
- streamer_standard_digital_goods_where_marketplace_allows


# SALE SURFACE

sale_surface:
- civilization_marketplace


# REVENUE RULE

ordinary_goods_sales_add_to:
- civilization_company_sales


# FINAL RULE

Ordinary streamer goods
must use Civilization Marketplace.
