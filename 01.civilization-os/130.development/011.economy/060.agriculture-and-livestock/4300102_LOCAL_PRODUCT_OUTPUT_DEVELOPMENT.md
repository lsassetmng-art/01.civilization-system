# ============================================================
# LOCAL PRODUCT OUTPUT
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy

# BUILD ORDER

1. define output schema
2. add production object FK
3. add quantity/unit validation
4. add produced_at traceability

# TESTS

- missing production object FK rejection
- output_quantity >= 0
- invalid unit rejection
