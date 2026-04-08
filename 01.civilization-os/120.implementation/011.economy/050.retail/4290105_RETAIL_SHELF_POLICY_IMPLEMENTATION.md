# ============================================================
# RETAIL SHELF POLICY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL SHELF POLICY.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- retail_shelf_policy_rule

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
- enabled_flag
- version
- created_at
- updated_at
- store_type_code
- category_code
- shelf_capacity_rule_code
- display_priority
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_shelf_policy_rule_store_type_code
- idx_retail_shelf_policy_rule_category_code
- idx_retail_shelf_policy_rule_effective_from
- idx_retail_shelf_policy_rule_effective_to

Checks:
- display_priority >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / item / operator / inspector linkage
- lifecycle ambiguity
- invalid retail quantity, price, score, or rule semantics
