# ============================================================
# CURRENCY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for currency definition and rate handling.

# 2. TRIGGER

- currency creation/update request
- rate refresh request
- currency freeze/unfreeze request

# 3. MAIN FLOW

1. resolve currency_definition
2. validate issuer and scope
3. update or create currency_rate where applicable
4. validate usage scope
5. persist currency_status
6. emit audit trace

# 4. FAILURE FLOW

- duplicate currency code -> reject
- invalid issuer scope -> reject
- ambiguous active rate -> fail closed
- frozen currency use attempt -> reject

# 5. OUTPUT

- currency state
- rate state
- audit record

