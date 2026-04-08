# ============================================================
# REWARD DEFINITION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for reward definitions.

# 2. INFRASTRUCTURE SCOPE

- definition/version storage
- source/condition/value storage
- definition publication path
- reward-definition audit sink

# 3. INFRASTRUCTURE RULES

- one active definition version must be durably resolvable
- source/condition/value sets must remain durably linked
- publication requires persisted compatible state
- infrastructure ambiguity must fail closed

