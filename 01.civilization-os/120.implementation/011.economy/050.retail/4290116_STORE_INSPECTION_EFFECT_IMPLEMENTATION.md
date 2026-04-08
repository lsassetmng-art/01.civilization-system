# ============================================================
# STORE INSPECTION EFFECT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for STORE INSPECTION EFFECT.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- retail_inspection_effect

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
- store_ref
- effect_type_code
- effect_value
- calculated_at
- source_ref
- effect_scope_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_inspection_effect_store_ref
- idx_retail_inspection_effect_type_code
- idx_retail_inspection_effect_calculated_at
- idx_retail_inspection_effect_effect_scope_code

Checks:
- effect_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / item / operator / inspector linkage
- lifecycle ambiguity
- invalid retail quantity, price, score, or rule semantics
