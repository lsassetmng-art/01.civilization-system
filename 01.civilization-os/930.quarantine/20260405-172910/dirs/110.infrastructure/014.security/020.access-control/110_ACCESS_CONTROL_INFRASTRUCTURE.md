# ============================================================
# ACCESS CONTROL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for access control structures.

# 2. INFRASTRUCTURE SCOPE

- access-control storage
- subject/rule persistence
- access-control-status storage
- access-control audit sink

# 3. INFRASTRUCTURE RULES

- access scope and identity must be durably resolvable
- subjects and permission rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

