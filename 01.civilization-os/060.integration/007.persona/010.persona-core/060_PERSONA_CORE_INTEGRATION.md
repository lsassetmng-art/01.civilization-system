# ============================================================
# PERSONA CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona core structures.

# 2. INTEGRATION SCOPE

- persona definition to profile/state/authority consumers
- identity and origin to presentation and governance consumers
- persona audit to operations

# 3. INTEGRATION RULES

- persona scope, identity, and origin must be explicit before handoff
- active persona handoff must preserve persona identity and status
- hidden persona-core mutation must not cross boundary
- ambiguous persona-core state must fail closed

