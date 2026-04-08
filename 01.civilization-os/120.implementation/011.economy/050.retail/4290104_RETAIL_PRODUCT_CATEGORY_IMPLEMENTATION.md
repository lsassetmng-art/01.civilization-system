# ============================================================
# RETAIL PRODUCT CATEGORY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL PRODUCT CATEGORY.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- retail_product_category_master

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
- essential_flag
- age_restriction_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_product_category_master_parent_code
- idx_retail_product_category_master_group_code
- idx_retail_product_category_master_enabled_flag
- idx_retail_product_category_master_essential_flag

Checks:
- code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / item / operator / inspector linkage
- lifecycle ambiguity
- invalid retail quantity, price, score, or rule semantics
