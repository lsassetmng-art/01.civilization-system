# ============================================================
# GOVERNMENT CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for government core structures.

# 2. INFRASTRUCTURE SCOPE

- government-unit storage
- authority/term persistence
- status publication path
- government audit sink

# 3. INFRASTRUCTURE RULES

- active authority and term must be durably resolvable
- legitimacy/stability state must persist before publication
- government identity must remain durable across transitions
- infrastructure ambiguity must fail closed

