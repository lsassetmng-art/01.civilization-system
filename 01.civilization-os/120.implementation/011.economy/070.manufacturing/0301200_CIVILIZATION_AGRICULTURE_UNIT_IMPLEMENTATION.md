# ============================================================
# CIVILIZATION AGRICULTURE UNIT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION AGRICULTURE UNIT.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- agriculture_unit

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
- operator_ref
- site_ref
- production_type_code
- capacity_value
- activation_status

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_agriculture_unit_operator_ref
- idx_agriculture_unit_site_ref
- idx_agriculture_unit_production_type_code
- idx_agriculture_unit_status

Checks:
- capacity_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this manufacturing concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid operator / facility / route / stock linkage
- lifecycle ambiguity
- invalid quantity, capacity, backlog, or maintenance semantics
