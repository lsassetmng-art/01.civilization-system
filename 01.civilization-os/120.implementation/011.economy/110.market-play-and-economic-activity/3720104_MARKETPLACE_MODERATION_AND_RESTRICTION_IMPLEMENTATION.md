# ============================================================
# MARKETPLACE MODERATION AND RESTRICTION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MARKETPLACE MODERATION AND RESTRICTION.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- marketplace_moderation_restriction_rule

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
- asset_type_code
- restriction_type_code
- moderation_level_code
- country_scope
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_marketplace_moderation_restriction_rule_asset_type_code
- idx_marketplace_moderation_restriction_rule_restriction_type_code
- idx_marketplace_moderation_restriction_rule_country_scope
- idx_marketplace_moderation_restriction_rule_effective_from
- idx_marketplace_moderation_restriction_rule_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid seller / buyer / creator / asset linkage
- lifecycle ambiguity
- invalid pricing, tax, fee, or entitlement semantics
