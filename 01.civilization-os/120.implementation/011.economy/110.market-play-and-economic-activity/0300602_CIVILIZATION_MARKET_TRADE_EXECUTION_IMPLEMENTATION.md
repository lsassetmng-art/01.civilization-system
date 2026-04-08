# ============================================================
# CIVILIZATION MARKET TRADE EXECUTION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical trade execution storage.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- market_trade_execution

# 4. COLUMNS

Common columns:
- id
- status
- trace_id
- created_at
- updated_at

Domain columns:
- buy_order_id
- sell_order_id
- executed_price
- executed_quantity
- currency_code
- settlement_status
- executed_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

FK:
- buy_order_id -> market_market_order.id
- sell_order_id -> market_market_order.id

Indexes:
- idx_market_trade_execution_buy_order_id
- idx_market_trade_execution_sell_order_id
- idx_market_trade_execution_settlement_status
- idx_market_trade_execution_executed_at

Checks:
- executed_quantity > 0
- executed_price >= 0

# 6. SOURCE OF TRUTH

Authoritative post-match execution row.

# 7. FAILURE HANDLING

Fail closed on:
- price ambiguity
- invalid matched order pair
- settlement incompatibility
