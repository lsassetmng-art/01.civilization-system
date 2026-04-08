# ============================================================
# COMPANY BUILDER DB
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for COMPANY BUILDER DB
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- company_builder_db_binding

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
- created_at
- updated_at
- company_type_code
- storage_group_code
- table_name
- binding_type
- reason_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_builder_db_binding_company_type_code
- idx_company_builder_db_binding_storage_group_code
- idx_company_builder_db_binding_table_name

Checks:
- table_name <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency
