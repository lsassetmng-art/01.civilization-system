# ============================================================
# GENERAL LAW
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for general law structures.

# 2. INFRASTRUCTURE SCOPE

- law-code storage
- article/scope persistence
- revision-state storage
- law audit sink

# 3. INFRASTRUCTURE RULES

- law identity and jurisdiction scope must be durably resolvable
- article set must persist before publication
- revision state must persist before legal mutation publication
- infrastructure ambiguity must fail closed

