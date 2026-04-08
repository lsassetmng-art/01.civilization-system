# ============================================================
# AGRICULTURE AND LIVESTOCK KPI
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for AGRICULTURE AND LIVESTOCK KPI.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- agriculture_livestock_kpi_snapshot

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
- idx_agriculture_livestock_kpi_snapshot_scope_type_scope_id
- idx_agriculture_livestock_kpi_snapshot_kpi_code
- idx_agriculture_livestock_kpi_snapshot_calculated_at

Checks:
- kpi_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this agriculture / livestock concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid producer / route / retail / city linkage
- lifecycle ambiguity
- invalid output, surplus, risk, or KPI semantics
