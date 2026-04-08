# ============================================================
# SELF SUFFICIENCY PRODUCTION TYPE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for SELF SUFFICIENCY PRODUCTION TYPE.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- self_sufficiency_production_type_master

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
- production_group_code
- household_applicable_flag
- city_applicable_flag

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_self_sufficiency_production_type_master_production_group_code
- idx_self_sufficiency_production_type_master_enabled_flag

Checks:
- code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this essential-consumption / self-sufficiency concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid household / item / city / welfare linkage
- lifecycle ambiguity
- invalid quantity, shortage, ration, or welfare semantics
