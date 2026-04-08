# ============================================================
# BANK ACCOUNT AND LOAN
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for BANK ACCOUNT AND LOAN.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- industry_financial_product

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
- status
- created_at
- updated_at
- provider_ref
- product_type_code
- product_name
- eligibility_rule_code
- currency_code
- enabled_flag

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_industry_financial_product_provider_ref
- idx_industry_financial_product_product_type_code
- idx_industry_financial_product_status
- idx_industry_financial_product_enabled_flag

Checks:
- product_name <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this manufacturing / industry-pack concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner or facility linkage
- lifecycle ambiguity
- invalid quantity / capacity / schedule semantics
