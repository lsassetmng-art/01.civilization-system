# ============================================================
# PERSONA SOCIETY LINK
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for persona society links.

# 2. RUNTIME STATE

- active society-link context
- role-assignment validation state
- affiliation update state
- participation publication state

# 3. EXECUTION RULES

- target society scope must resolve before link publication
- role assignment must be explicit and scope-bound
- contradictory active roles are prohibited
- affiliation and participation must remain attributable

# 4. FAILURE HANDLING

- missing target scope -> reject
- contradictory active role -> reject
- ambiguous affiliation state -> fail closed

