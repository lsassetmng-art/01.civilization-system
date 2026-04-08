# ============================================================
# MARKETPLACE TAX PROFILE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical marketplace tax profile storage.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- marketplace_tax_profile

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
- jurisdiction_ref
- tax_mode
- withholding_rule
- effective_from
- effective_to

# 5. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- code

Indexes:
- idx_marketplace_tax_profile_beneficiary_ref
- idx_marketplace_tax_profile_jurisdiction_ref
- idx_marketplace_tax_profile_effective_from
- idx_marketplace_tax_profile_effective_to

Checks:
- effective_from < effective_to

# 6. SOURCE OF TRUTH

Authoritative marketplace tax configuration row.

# 7. FAILURE HANDLING

Fail closed on:
- invalid jurisdiction
- invalid tax mode
