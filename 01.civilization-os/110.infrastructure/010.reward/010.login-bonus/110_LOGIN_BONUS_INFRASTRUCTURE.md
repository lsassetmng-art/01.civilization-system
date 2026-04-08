# ============================================================
# LOGIN BONUS
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for login bonus systems.

# 2. INFRASTRUCTURE SCOPE

- campaign storage
- claim-state persistence
- reset-rule storage
- login-bonus audit sink

# 3. INFRASTRUCTURE RULES

- active campaign must be durably resolvable
- claim-state changes must persist before reward handoff
- reset-rule execution must preserve campaign identity
- infrastructure ambiguity must fail closed

