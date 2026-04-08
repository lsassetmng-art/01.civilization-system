# ============================================================
# PROPERTY LAND
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define parcel schema
2. add zoning validation
3. add owner/jurisdiction checks
4. add lifecycle transitions

# TESTS

- parcel_area_value > 0
- invalid zoning rejection
- ownership ambiguity rejection
