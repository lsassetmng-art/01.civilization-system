# ============================================================
# MARKET SHIPMENT AND PRICE RESPONSE MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: market-shipment-and-price-response

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MARKET FIELDS
# ============================================================

market_fields:
- market_id
- market_type
- current_price_level
- volatility_level
- freshness_premium
- bulk_processing_demand
- ritual_or_festival_demand
- local_loyalty_bonus
- shipment_delay_penalty


# ============================================================
# 2. SHIPMENT ACTIONS
# ============================================================

shipment_actions:
- ship_to_local_market
- ship_to_major_market
- split_shipment
- hold_for_price_change
- sell_immediately_for_liquidity
- prioritize_fresh_high_value_sale
- prioritize_bulk_processing_sale
- reserve_for_local_commitment


# ============================================================
# 3. FINAL RULE
# ============================================================

Fishery market response must expose
the tradeoff between freshness,
speed, loyalty, and price speculation.
