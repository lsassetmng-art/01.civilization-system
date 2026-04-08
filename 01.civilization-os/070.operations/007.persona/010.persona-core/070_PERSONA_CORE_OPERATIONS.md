# ============================================================
# PERSONA CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona core structures.

# 2. OPERATIONAL CONTROLS

- persona-definition review
- identity/origin review
- active/suspended state inspection
- persona-core audit inspection

# 3. FAILURE OPERATIONS

- missing persona scope -> reject
- invalid identity or origin binding -> block
- hidden persona-core mutation -> fail closed

