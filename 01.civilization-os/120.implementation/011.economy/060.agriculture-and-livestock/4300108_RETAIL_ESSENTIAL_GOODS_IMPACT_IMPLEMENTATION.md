# ============================================================
# RETAIL ESSENTIAL GOODS IMPACT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL ESSENTIAL GOODS IMPACT.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- retail_essential_goods_impact_snapshot

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
- impact_type_code
- impact_value
- calculated_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_essential_goods_impact_snapshot_scope_type_scope_id
- idx_retail_essential_goods_impact_snapshot_impact_type_code
- idx_retail_essential_goods_impact_snapshot_calculated_at

Checks:
- impact_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this agriculture / livestock concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid producer / route / retail / city linkage
- lifecycle ambiguity
- invalid output, surplus, risk, or KPI semantics
