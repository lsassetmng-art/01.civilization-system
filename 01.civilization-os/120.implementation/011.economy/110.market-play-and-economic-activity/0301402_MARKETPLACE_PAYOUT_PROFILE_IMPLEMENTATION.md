# ============================================================
# MARKETPLACE PAYOUT PROFILE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical payout profile storage.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- marketplace_payout_profile

# 4. COLUMNS

Common columns:
- id
- code
- enabled_flag
- version
- created_at
- updated_at

Domain columns:
- beneficiary_ref
- payout_method_type
- payout_currency_scope
- settlement_cycle
- effective_from
- effective_to

# 5. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- code

Indexes:
- idx_marketplace_payout_profile_beneficiary_ref
- idx_marketplace_payout_profile_effective_from
- idx_marketplace_payout_profile_effective_to
- idx_marketplace_payout_profile_enabled_flag

Checks:
- effective_from < effective_to

# 6. SOURCE OF TRUTH

Authoritative payout configuration row.

# 7. FAILURE HANDLING

Fail closed on:
- unsupported payout method
- currency scope mismatch
