# ============================================================
# TENANT UNIT
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define tenant unit schema
2. add building FK
3. add operator and capacity validation
4. add leasing lifecycle handling

# TESTS

- missing building FK rejection
- invalid unit capacity rejection
- invalid leasing state rejection
