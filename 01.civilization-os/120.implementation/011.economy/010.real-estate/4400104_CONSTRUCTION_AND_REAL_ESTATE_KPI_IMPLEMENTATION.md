# ============================================================
# CONSTRUCTION AND REAL ESTATE KPI
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CONSTRUCTION AND REAL ESTATE KPI.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- construction_real_estate_kpi_snapshot

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
- trace_id
- created_at
- scope_type
- scope_id
- kpi_code
- kpi_value
- calculated_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_construction_real_estate_kpi_snapshot_scope_type_scope_id
- idx_construction_real_estate_kpi_snapshot_kpi_code
- idx_construction_real_estate_kpi_snapshot_calculated_at

Checks:
- kpi_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this real-estate concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner / tenant / land / building linkage
- lifecycle ambiguity
- invalid valuation, occupancy, or lease semantics
