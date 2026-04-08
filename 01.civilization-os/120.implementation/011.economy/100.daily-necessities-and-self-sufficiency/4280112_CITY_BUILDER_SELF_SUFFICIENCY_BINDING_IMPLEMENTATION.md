# ============================================================
# CITY BUILDER SELF SUFFICIENCY BINDING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CITY BUILDER SELF SUFFICIENCY BINDING.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- city_builder_self_sufficiency_binding

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
- city_ref
- production_type_code
- target_ref
- binding_type
- display_order
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_city_builder_self_sufficiency_binding_city_ref
- idx_city_builder_self_sufficiency_binding_production_type_code
- idx_city_builder_self_sufficiency_binding_target_ref
- idx_city_builder_self_sufficiency_binding_display_order

Checks:
- display_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this essential-consumption / self-sufficiency concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid household / item / city / welfare linkage
- lifecycle ambiguity
- invalid quantity, shortage, ration, or welfare semantics
