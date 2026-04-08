# ============================================================
# CIVILIZATION INVENTORY POSITION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical inventory position storage.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- manufacturing_inventory_position

# 4. COLUMNS

Common columns:
- id
- trace_id
- created_at
- updated_at

Domain columns:
- owner_ref
- item_ref
- quantity_value
- reserved_quantity_value
- available_quantity_value
- calculated_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

Indexes:
- idx_manufacturing_inventory_position_owner_ref
- idx_manufacturing_inventory_position_item_ref
- idx_manufacturing_inventory_position_calculated_at

Checks:
- quantity_value >= 0
- reserved_quantity_value >= 0
- available_quantity_value >= 0

# 6. SOURCE OF TRUTH

Authoritative aggregate inventory position row.
