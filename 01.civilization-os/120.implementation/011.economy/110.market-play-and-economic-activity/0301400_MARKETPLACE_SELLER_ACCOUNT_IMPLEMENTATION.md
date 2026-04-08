# ============================================================
# MARKETPLACE SELLER ACCOUNT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical seller account storage for marketplace participation.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- marketplace_seller_account

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
- seller_type
- payout_profile_id
- tax_profile_id
- trust_status
- enabled_flag

# 5. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- code

FK:
- payout_profile_id -> marketplace_payout_profile.id
- tax_profile_id -> marketplace_tax_profile.id

Indexes:
- idx_marketplace_seller_account_seller_ref
- idx_marketplace_seller_account_seller_type
- idx_marketplace_seller_account_status
- idx_marketplace_seller_account_enabled_flag

# 6. SOURCE OF TRUTH

Authoritative seller participation state.

# 7. FAILURE HANDLING

Fail closed on:
- incomplete payout/tax binding
- invalid seller type
