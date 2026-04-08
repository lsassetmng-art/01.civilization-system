# ============================================================
# TAX
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for taxation.

# 2. TRIGGER

- taxable event
- periodic assessment cycle
- payment posting event

# 3. MAIN FLOW

1. resolve tax_rule by jurisdiction
2. compute tax_base
3. create tax_assessment
4. accept and apply payment state where applicable
5. update assessment/payment status
6. emit audit trace

# 4. FAILURE FLOW

- missing jurisdiction rule -> reject
- invalid tax base -> reject
- unscoped taxation attempt -> fail closed

# 5. OUTPUT

- assessment state
- payment state
- audit record

