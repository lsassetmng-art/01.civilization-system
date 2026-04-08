# ============================================================
# DIGITAL PRODUCT CATEGORY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for DIGITAL PRODUCT CATEGORY.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- marketplace_digital_product_category_master

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- code
- name
- enabled_flag
- version
- created_at
- updated_at
- parent_code
- category_group_code
- access_scope_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_marketplace_digital_product_category_master_parent_code
- idx_marketplace_digital_product_category_master_group_code
- idx_marketplace_digital_product_category_master_enabled_flag

Checks:
- code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid seller / buyer / creator / asset linkage
- lifecycle ambiguity
- invalid pricing, tax, fee, or entitlement semantics
