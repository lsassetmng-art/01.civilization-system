# ============================================================
# CIVILIZATION MARKET LISTING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical table for market listings.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- market_market_listing

# 4. COLUMNS

Common columns:
- id
- code
- status
- version
- created_at
- updated_at
- created_by
- updated_by

Domain columns:
- seller_ref
- product_ref
- price_amount
- currency_code
- quantity_value
- listing_type
- published_at
- unpublished_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- code

Indexes:
- idx_market_market_listing_seller_ref
- idx_market_market_listing_product_ref
- idx_market_market_listing_status
- idx_market_market_listing_published_at

Checks:
- price_amount >= 0
- quantity_value >= 0

# 6. SOURCE OF TRUTH

Authoritative listing state table.

# 7. FAILURE HANDLING

Fail closed on:
- invalid seller/product pairing
- illegal status transition
