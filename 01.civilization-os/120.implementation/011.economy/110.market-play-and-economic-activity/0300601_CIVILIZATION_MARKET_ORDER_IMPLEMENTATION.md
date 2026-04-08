# ============================================================
# CIVILIZATION MARKET ORDER
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical table for market orders.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- market_market_order

# 4. COLUMNS

Common columns:
- id
- status
- trace_id
- actor_ref
- created_at
- updated_at

Domain columns:
- buyer_ref
- seller_ref
- listing_id
- order_quantity
- order_price
- currency_code
- ordered_at
- cancelled_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

FK:
- listing_id -> market_market_listing.id

Indexes:
- idx_market_market_order_buyer_ref
- idx_market_market_order_seller_ref
- idx_market_market_order_listing_id
- idx_market_market_order_status

Checks:
- order_quantity > 0
- order_price >= 0

# 6. SOURCE OF TRUTH

Authoritative order row for market transaction lifecycle.

# 7. FAILURE HANDLING

Fail closed on:
- stale listing
- invalid order quantity
- broken listing linkage
