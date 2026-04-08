# ============================================================
# MARKETPLACE SELLER CHANGE PROHIBITION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines protected seller continuity rule storage.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- marketplace_seller_change_prohibition

# 4. COLUMNS

Common columns:
- id
- code
- enabled_flag
- version
- created_at
- updated_at

Domain columns:
- protected_asset_type
- protected_asset_ref
- current_seller_ref
- prohibition_status
- reason_code
- effective_from
- effective_to

# 5. KEYS AND CONSTRAINTS

PK:
- id

Indexes:
- idx_marketplace_seller_change_prohibition_asset_ref
- idx_marketplace_seller_change_prohibition_current_seller_ref
- idx_marketplace_seller_change_prohibition_effective_from
- idx_marketplace_seller_change_prohibition_effective_to

Checks:
- effective_from < effective_to

# 6. SOURCE OF TRUTH

Authoritative prohibition rule row.

# 7. FAILURE HANDLING

Fail closed on:
- protected asset ambiguity
- invalid time window
