# ============================================================
# PROPERTY BUILDING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for PROPERTY BUILDING.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- property_building

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
- code
- status
- created_at
- updated_at
- owner_ref
- land_ref
- building_type_code
- floor_area_value
- occupancy_status_code
- valuation_amount
- currency_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_property_building_owner_ref
- idx_property_building_land_ref
- idx_property_building_building_type_code
- idx_property_building_status

Checks:
- floor_area_value >= 0
- valuation_amount >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this real-estate concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner / tenant / land / building linkage
- lifecycle ambiguity
- invalid valuation, occupancy, or lease semantics
