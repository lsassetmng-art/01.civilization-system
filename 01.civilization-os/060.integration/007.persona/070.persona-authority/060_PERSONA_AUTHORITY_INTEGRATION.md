# ============================================================
# PERSONA AUTHORITY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona authority structures.

# 2. INTEGRATION SCOPE

- authority definitions to governance and activity consumers
- authority grants and rules to execution and approval consumers
- authority audit to operations

# 3. INTEGRATION RULES

- authority scope, subject scope, and rule set must be explicit before handoff
- authority handoff must preserve grant identity and status
- hidden authority mutation must not cross boundary
- ambiguous authority state must fail closed

