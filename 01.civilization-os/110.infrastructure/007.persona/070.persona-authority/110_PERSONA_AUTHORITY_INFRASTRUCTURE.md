# ============================================================
# PERSONA AUTHORITY
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona authority structures.

# 2. INFRASTRUCTURE SCOPE

- authority-definition storage
- authority-grant persistence
- rule/status storage
- authority audit sink

# 3. INFRASTRUCTURE RULES

- authority identity and subject scope must be durably resolvable
- grant and rule state must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

