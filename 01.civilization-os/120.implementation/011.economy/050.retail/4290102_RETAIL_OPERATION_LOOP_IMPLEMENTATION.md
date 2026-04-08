# ============================================================
# RETAIL OPERATION LOOP
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL OPERATION LOOP.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- retail_operation_profile

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
- store_ref
- operation_mode_code
- service_hours_code
- automation_level_code
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_operation_profile_operator_ref
- idx_retail_operation_profile_store_ref
- idx_retail_operation_profile_operation_mode_code
- idx_retail_operation_profile_status
- idx_retail_operation_profile_country_scope

Checks:
- code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / item / operator / inspector linkage
- lifecycle ambiguity
- invalid retail quantity, price, score, or rule semantics
