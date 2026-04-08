# ============================================================
# NATION DIFFERENCE PROFILE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for NATION DIFFERENCE PROFILE.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- nation_difference_profile_binding

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
- status
- version
- created_at
- updated_at
- nation_ref
- profile_type_code
- profile_value_code
- weight_value
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_nation_difference_profile_binding_nation_ref
- idx_nation_difference_profile_binding_profile_type_code
- idx_nation_difference_profile_binding_effective_from
- idx_nation_difference_profile_binding_effective_to

Checks:
- weight_value >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this essential-consumption / self-sufficiency concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid household / item / city / welfare linkage
- lifecycle ambiguity
- invalid quantity, shortage, ration, or welfare semantics
