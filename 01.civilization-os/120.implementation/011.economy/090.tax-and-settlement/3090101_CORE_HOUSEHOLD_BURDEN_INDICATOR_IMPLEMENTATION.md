# ============================================================
# CORE HOUSEHOLD BURDEN INDICATOR
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CORE HOUSEHOLD BURDEN INDICATOR.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- household_burden_indicator_master

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
- indicator_group_code
- burden_dimension_code
- default_weight_value

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_household_burden_indicator_master_indicator_group_code
- idx_household_burden_indicator_master_burden_dimension_code
- idx_household_burden_indicator_master_enabled_flag

Checks:
- default_weight_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
