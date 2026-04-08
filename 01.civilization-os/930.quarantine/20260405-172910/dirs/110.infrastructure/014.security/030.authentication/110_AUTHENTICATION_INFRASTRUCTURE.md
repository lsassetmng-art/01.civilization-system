# ============================================================
# AUTHENTICATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for authentication structures.

# 2. INFRASTRUCTURE SCOPE

- authentication storage
- factor/session persistence
- authentication-status storage
- authentication audit sink

# 3. INFRASTRUCTURE RULES

- auth scope and identity must be durably resolvable
- factors and sessions must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

