# ============================================================
# FOOD SERVICE KPI
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for FOOD SERVICE KPI.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- food_service_kpi_snapshot

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
- publication_status_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_food_service_kpi_snapshot_scope_type_scope_id
- idx_food_service_kpi_snapshot_kpi_code
- idx_food_service_kpi_snapshot_calculated_at
- idx_food_service_kpi_snapshot_publication_status_code

Checks:
- kpi_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
