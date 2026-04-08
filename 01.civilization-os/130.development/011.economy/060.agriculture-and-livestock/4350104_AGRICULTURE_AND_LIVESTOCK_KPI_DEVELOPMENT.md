# ============================================================
# AGRICULTURE AND LIVESTOCK KPI
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define KPI aggregate schema
2. add KPI code validation
3. add source trace linkage
4. add scheduled publication

# TESTS

- invalid KPI code rejection
- missing source trace rejection
- calculated_at integrity
