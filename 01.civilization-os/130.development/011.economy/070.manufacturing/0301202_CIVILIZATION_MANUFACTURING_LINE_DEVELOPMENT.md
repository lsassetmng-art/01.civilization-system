# ============================================================
# CIVILIZATION MANUFACTURING LINE
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define line schema
2. add operator/facility validation
3. add capacity validation
4. add maintenance status handling

# TESTS

- capacity_value >= 0
- invalid facility ref rejection
- invalid maintenance state rejection
