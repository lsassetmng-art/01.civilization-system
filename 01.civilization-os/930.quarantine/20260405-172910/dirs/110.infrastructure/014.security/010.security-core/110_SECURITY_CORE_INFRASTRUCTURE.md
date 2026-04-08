# ============================================================
# SECURITY CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for security core structures.

# 2. INFRASTRUCTURE SCOPE

- security-definition storage
- scope/version persistence
- security-status storage
- security-core audit sink

# 3. INFRASTRUCTURE RULES

- security scope and identity must be durably resolvable
- scope bindings and versions must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

