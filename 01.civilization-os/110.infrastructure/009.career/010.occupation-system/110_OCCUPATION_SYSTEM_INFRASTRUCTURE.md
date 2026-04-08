# ============================================================
# OCCUPATION SYSTEM
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for occupation system structures.

# 2. INFRASTRUCTURE SCOPE

- occupation-definition storage
- family/rule persistence
- occupation-status storage
- occupation audit sink

# 3. INFRASTRUCTURE RULES

- occupation and family identity must be durably resolvable
- rule set must persist before active publication
- active and revised state must remain durable
- infrastructure ambiguity must fail closed

