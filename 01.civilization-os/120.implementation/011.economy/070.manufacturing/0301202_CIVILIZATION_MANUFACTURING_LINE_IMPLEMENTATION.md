# ============================================================
# CIVILIZATION MANUFACTURING LINE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical manufacturing line storage.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- manufacturing_line

# 4. COLUMNS

Common columns:
- id
- code
- status
- version
- created_at
- updated_at

Domain columns:
- operator_ref
- facility_ref
- line_type
- capacity_value
- maintenance_status

# 5. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- code

Indexes:
- idx_manufacturing_line_operator_ref
- idx_manufacturing_line_facility_ref
- idx_manufacturing_line_status

Checks:
- capacity_value >= 0

# 6. SOURCE OF TRUTH

Authoritative manufacturing line row.
