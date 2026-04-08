# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for military service and mobilization.

# 2. INFRASTRUCTURE SCOPE

- service-rule storage
- obligation-state persistence
- mobilization-order storage
- mobilization audit sink

# 3. INFRASTRUCTURE RULES

- obligation and order identity must be durably resolvable
- mobilization status must persist before execution publication
- subject scope and order scope must remain durable
- infrastructure ambiguity must fail closed

