# ============================================================
# LOCAL PRODUCTION OBJECT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for LOCAL PRODUCTION OBJECT.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- local_production_object

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
- producer_ref
- production_type_code
- location_ref
- capacity_value
- activation_status

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_local_production_object_producer_ref
- idx_local_production_object_production_type_code
- idx_local_production_object_location_ref
- idx_local_production_object_status

Checks:
- capacity_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this agriculture / livestock concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid producer / route / retail / city linkage
- lifecycle ambiguity
- invalid output, surplus, risk, or KPI semantics
