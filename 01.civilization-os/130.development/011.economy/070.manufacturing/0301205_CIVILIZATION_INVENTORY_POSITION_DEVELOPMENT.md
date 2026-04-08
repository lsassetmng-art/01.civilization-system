# ============================================================
# CIVILIZATION INVENTORY POSITION
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define aggregate inventory schema
2. add owner/item validation
3. add reservation and available quantity checks
4. add recalculation pipeline

# TESTS

- quantity_value >= 0
- reserved_quantity_value >= 0
- available_quantity_value >= 0
- inconsistent aggregate rejection
