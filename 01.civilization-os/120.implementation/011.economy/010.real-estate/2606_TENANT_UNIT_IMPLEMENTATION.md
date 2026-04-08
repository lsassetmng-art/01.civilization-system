# ============================================================
# TENANT UNIT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for TENANT UNIT.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- tenant_unit

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
- created_at
- updated_at
- building_ref
- tenant_ref
- unit_type_code
- lease_mode_code
- effective_from
- effective_to
- rent_amount
- currency_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_tenant_unit_building_ref
- idx_tenant_unit_tenant_ref
- idx_tenant_unit_unit_type_code
- idx_tenant_unit_effective_from
- idx_tenant_unit_effective_to

Checks:
- rent_amount >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this real-estate concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner / tenant / land / building linkage
- lifecycle ambiguity
- invalid valuation, occupancy, or lease semantics
