# ============================================================
# MARKET
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for market structure.

# 2. CORE ENTITIES

- market
- market_listing
- market_order
- market_trade

# 3. STATE MODEL

market:
- market_id
- market_code
- market_scope
- market_status
- market_type_code

market_listing:
- listing_id
- market_id
- item_scope
- listing_price
- listing_status

market_order:
- order_id
- market_id
- order_type_code
- order_scope
- order_status

market_trade:
- trade_id
- market_id
- buy_order_id
- sell_order_id
- trade_status

# 4. INTEGRITY RULES

- listing/order belongs to one market
- trade must preserve buy and sell order identity
- market scope must be explicit
- invalid cross-market trade is prohibited

