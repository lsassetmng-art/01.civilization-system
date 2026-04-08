# ============================================================
# RETAIL DETAIL UI SURFACE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for RETAIL DETAIL UI SURFACE.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- retail_ui_surface_binding

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
- status
- created_at
- updated_at
- retail_surface_code
- source_ref
- target_ref
- binding_type
- display_order
- country_scope
- enabled_flag

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_retail_ui_surface_binding_surface_code
- idx_retail_ui_surface_binding_source
- idx_retail_ui_surface_binding_target
- idx_retail_ui_surface_binding_display_order
- idx_retail_ui_surface_binding_country_scope

Checks:
- display_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this retail concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid store / item / operator / inspector linkage
- lifecycle ambiguity
- invalid retail quantity, price, score, or rule semantics
