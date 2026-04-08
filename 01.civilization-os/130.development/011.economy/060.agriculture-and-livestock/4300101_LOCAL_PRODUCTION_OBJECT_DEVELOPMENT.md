# ============================================================
# LOCAL PRODUCTION OBJECT
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define production object schema
2. add producer/location validation
3. add capacity and type validation
4. add lifecycle handling

# TESTS

- capacity_value >= 0
- invalid production type rejection
- invalid producer scope rejection
