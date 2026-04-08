# ============================================================
# MAJOR NATION HOUSEHOLD BURDEN POSTURE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MAJOR NATION HOUSEHOLD BURDEN POSTURE.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- major_nation_household_burden_posture_binding

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
- indicator_code
- posture_code
- weight_value
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_major_nation_household_burden_posture_binding_nation_ref
- idx_major_nation_household_burden_posture_binding_indicator_code
- idx_major_nation_household_burden_posture_binding_effective_from
- idx_major_nation_household_burden_posture_binding_effective_to

Checks:
- weight_value >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
