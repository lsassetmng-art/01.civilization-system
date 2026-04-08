# ============================================================
# PERSONA CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona core structures.

# 2. INFRASTRUCTURE SCOPE

- persona-definition storage
- identity/origin persistence
- persona-status storage
- persona-core audit sink

# 3. INFRASTRUCTURE RULES

- persona identity and scope must be durably resolvable
- identity and origin must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

