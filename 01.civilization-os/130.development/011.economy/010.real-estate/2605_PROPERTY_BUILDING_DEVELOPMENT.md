# ============================================================
# PROPERTY BUILDING
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define building schema
2. add land FK
3. add occupancy validation
4. add lifecycle state support

# TESTS

- missing land FK rejection
- gross_floor_area_value > 0
- impossible occupancy state rejection
