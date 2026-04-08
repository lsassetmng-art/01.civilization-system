# ============================================================
# CURRENCY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for currency structures.

# 2. INTEGRATION SCOPE

- currency definition to pricing/payment systems
- currency rate to conversion consumers
- currency freeze state to runtime/market controls
- currency audit to operations

# 3. INTEGRATION RULES

- only explicit active currency definitions may cross boundary
- effective rate handoff must preserve base/target identity and timestamp
- frozen currency state must block downstream usage
- ambiguous currency/rate resolution must not cross boundary

