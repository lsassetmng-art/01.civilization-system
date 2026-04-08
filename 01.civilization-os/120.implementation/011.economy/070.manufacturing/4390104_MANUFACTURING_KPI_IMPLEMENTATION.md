# ============================================================
# MANUFACTURING KPI
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical KPI snapshot storage for manufacturing.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- manufacturing_kpi_snapshot

# 4. COLUMNS

Common columns:
- id
- trace_id
- created_at

Domain columns:
- scope_type
- scope_id
- kpi_code
- kpi_value
- calculated_at
- source_ref

# 5. KEYS AND CONSTRAINTS

PK:
- id

Indexes:
- idx_manufacturing_kpi_snapshot_scope_type_scope_id
- idx_manufacturing_kpi_snapshot_kpi_code
- idx_manufacturing_kpi_snapshot_calculated_at

# 6. SOURCE OF TRUTH

Authoritative aggregate KPI snapshot table.
