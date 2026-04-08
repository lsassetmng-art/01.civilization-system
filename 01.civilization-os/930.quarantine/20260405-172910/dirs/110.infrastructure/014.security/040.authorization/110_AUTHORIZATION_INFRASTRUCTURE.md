# ============================================================
# AUTHORIZATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for authorization structures.

# 2. INFRASTRUCTURE SCOPE

- authorization storage
- subject/rule persistence
- authorization-status storage
- authorization audit sink

# 3. INFRASTRUCTURE RULES

- authorization scope and identity must be durably resolvable
- subjects and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

