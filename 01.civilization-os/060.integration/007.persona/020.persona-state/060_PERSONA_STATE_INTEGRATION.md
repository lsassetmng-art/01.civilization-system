# ============================================================
# PERSONA STATE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona state structures.

# 2. INTEGRATION SCOPE

- persona state to activity/schedule/runtime consumers
- condition and mood state to recommendation and behavior consumers
- persona-state audit to operations

# 3. INTEGRATION RULES

- state scope, condition state, and mood state must be explicit before handoff
- frozen state must not cross mutation boundary
- state handoff must preserve persona identity and state version
- ambiguous persona-state publication must fail closed

