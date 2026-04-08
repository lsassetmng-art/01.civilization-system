# ============================================================
# REVENUE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for revenues.

# 2. INTEGRATION SCOPE

- revenue records to allocation systems
- allocations to settlement/accounting consumers
- settlement references to payout/review systems
- revenue audit to operations

# 3. INTEGRATION RULES

- source scope must be explicit before allocation handoff
- allocation must preserve revenue identity
- hidden revenue mutation must not cross boundary
- ambiguous revenue scope must fail closed

