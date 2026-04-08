# ============================================================
# STREAMER AGENCY ORDINARY GOODS
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration

# 1. PURPOSE

Defines handling of ordinary goods sold through streamer-agency-linked flows.

# 2. STORAGE

- ordinary_goods_id
- seller_company_id
- agency_ref
- product_ref
- listing_status
- stock_mode
- pricing_payload

# 3. EXECUTION

1. validate seller and agency linkage
2. validate goods classification
3. create or sync listing
4. expose to marketplace/store surfaces

# 4. FAILURE HANDLING

Fail closed on unsupported goods type or invalid seller-agency relationship.
