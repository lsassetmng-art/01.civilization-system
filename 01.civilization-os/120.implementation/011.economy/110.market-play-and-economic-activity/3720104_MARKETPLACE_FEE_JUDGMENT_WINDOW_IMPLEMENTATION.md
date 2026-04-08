# ============================================================
# MARKETPLACE FEE JUDGMENT WINDOW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MARKETPLACE FEE JUDGMENT WINDOW.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- marketplace_fee_judgment_window_rule

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
- judgment_scope_code
- window_start_at
- window_end_at
- rule_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_marketplace_fee_judgment_window_rule_scope_code
- idx_marketplace_fee_judgment_window_rule_window_start_at
- idx_marketplace_fee_judgment_window_rule_window_end_at

Checks:
- window_start_at < window_end_at

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid seller / buyer / creator / asset linkage
- lifecycle ambiguity
- invalid pricing, tax, fee, or entitlement semantics
