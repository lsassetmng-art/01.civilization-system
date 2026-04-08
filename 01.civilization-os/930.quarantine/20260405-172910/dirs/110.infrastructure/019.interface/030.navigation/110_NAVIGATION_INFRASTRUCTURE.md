# ============================================================
# NAVIGATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for navigation structures.

# 2. INFRASTRUCTURE SCOPE

- navigation storage
- target/rule persistence
- navigation-status storage
- navigation audit sink

# 3. INFRASTRUCTURE RULES

- navigation scope and identity must be durably resolvable
- targets and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

