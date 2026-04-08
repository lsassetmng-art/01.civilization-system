# ============================================================
# ESSENTIAL LIFE IMPACT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for ESSENTIAL LIFE IMPACT.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- essential_life_impact_snapshot

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
- subject_ref
- impact_type_code
- impact_value
- calculated_at
- source_ref
- impact_window_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_essential_life_impact_snapshot_subject_ref
- idx_essential_life_impact_snapshot_impact_type_code
- idx_essential_life_impact_snapshot_calculated_at
- idx_essential_life_impact_snapshot_impact_window_code

Checks:
- impact_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this essential-consumption / self-sufficiency concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid household / item / city / welfare linkage
- lifecycle ambiguity
- invalid quantity, shortage, ration, or welfare semantics
