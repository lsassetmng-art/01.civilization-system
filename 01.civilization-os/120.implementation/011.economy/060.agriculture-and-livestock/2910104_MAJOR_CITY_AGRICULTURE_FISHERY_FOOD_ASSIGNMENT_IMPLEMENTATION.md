# ============================================================
# MAJOR CITY AGRICULTURE FISHERY FOOD ASSIGNMENT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MAJOR CITY AGRICULTURE FISHERY FOOD ASSIGNMENT.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- major_city_agriculture_fishery_food_assignment

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
- assignment_group_code
- target_ref
- assignment_type_code
- display_order
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_major_city_agriculture_fishery_food_assignment_city_ref
- idx_major_city_agriculture_fishery_food_assignment_group_code
- idx_major_city_agriculture_fishery_food_assignment_target_ref
- idx_major_city_agriculture_fishery_food_assignment_display_order

Checks:
- display_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this agriculture / livestock concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid producer / route / retail / city linkage
- lifecycle ambiguity
- invalid output, surplus, risk, or KPI semantics
