# ============================================================
# LOGIN BONUS
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for login bonus systems.

# 2. INTEGRATION SCOPE

- login event to campaign evaluation
- claim progression to reward grant
- reset state to campaign management
- login bonus audit to operations

# 3. INTEGRATION RULES

- campaign and claim state must be explicit before reward handoff
- duplicate claim state must not cross boundary
- reset rule execution must preserve campaign identity
- ambiguous campaign state must fail closed

