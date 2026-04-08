# ============================================================
# PERSONA ACTIVITY BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona activity bindings.

# 2. OPERATIONAL CONTROLS

- activity-binding review
- reference/rule review
- active/blocked state inspection
- activity-binding audit inspection

# 3. FAILURE OPERATIONS

- missing persona or activity scope -> reject
- invalid reference or rule binding -> block
- hidden activity-binding mutation -> fail closed

