# ============================================================
# RETAIL FACILITY TYPE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL FACILITY TYPE.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- retail_facility_type_master

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
- facility_family_code
- operator_class_code
- direct_sale_flag
- stock_handling_flag

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_facility_type_master_facility_family_code
- idx_retail_facility_type_master_operator_class_code
- idx_retail_facility_type_master_enabled_flag

Checks:
- code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / operator / catalog linkage
- lifecycle ambiguity
- invalid price, quantity, or inspection semantics
