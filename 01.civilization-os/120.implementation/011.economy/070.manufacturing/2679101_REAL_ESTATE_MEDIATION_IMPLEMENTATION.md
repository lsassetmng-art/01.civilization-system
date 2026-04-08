# ============================================================
# REAL ESTATE MEDIATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for REAL ESTATE MEDIATION.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- industry_operation_profile

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
- version
- created_at
- updated_at
- operator_ref
- facility_ref
- industry_family_code
- operation_mode_code
- capacity_value
- automation_level_code
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_industry_operation_profile_operator_ref
- idx_industry_operation_profile_facility_ref
- idx_industry_operation_profile_industry_family_code
- idx_industry_operation_profile_status
- idx_industry_operation_profile_country_scope

Checks:
- capacity_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this manufacturing / industry-pack concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner or facility linkage
- lifecycle ambiguity
- invalid quantity / capacity / schedule semantics
