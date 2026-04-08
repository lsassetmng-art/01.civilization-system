# ============================================================
# CIVILIZATION FUND VEHICLE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION FUND VEHICLE.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- fund_vehicle

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
- manager_ref
- fund_type_code
- fund_name
- currency_code
- vintage_year
- activation_status

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_fund_vehicle_manager_ref
- idx_fund_vehicle_fund_type_code
- idx_fund_vehicle_vintage_year
- idx_fund_vehicle_status

Checks:
- vintage_year >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this securities concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid issuer / holder / instrument linkage
- lifecycle ambiguity
- invalid valuation, ownership, or settlement semantics
