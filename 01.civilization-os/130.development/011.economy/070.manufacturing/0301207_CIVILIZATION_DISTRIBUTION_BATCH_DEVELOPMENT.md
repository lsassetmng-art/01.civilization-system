# ============================================================
# CIVILIZATION DISTRIBUTION BATCH
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define distribution batch schema
2. add source/destination validation
3. add item validation
4. add dispatch/delivery lifecycle

# TESTS

- batch_quantity > 0
- invalid source/destination rejection
- invalid lifecycle transition rejection
