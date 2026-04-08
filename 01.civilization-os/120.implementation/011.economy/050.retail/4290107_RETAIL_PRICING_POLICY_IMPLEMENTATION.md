# ============================================================
# RETAIL PRICING POLICY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL PRICING POLICY.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- retail_pricing_policy_rule

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
- store_ref
- category_code
- pricing_mode_code
- margin_rate_value
- markdown_limit_rate_value
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_pricing_policy_rule_store_ref
- idx_retail_pricing_policy_rule_category_code
- idx_retail_pricing_policy_rule_pricing_mode_code
- idx_retail_pricing_policy_rule_effective_from
- idx_retail_pricing_policy_rule_effective_to

Checks:
- margin_rate_value >= 0
- markdown_limit_rate_value >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / item / operator / inspector linkage
- lifecycle ambiguity
- invalid retail quantity, price, score, or rule semantics
