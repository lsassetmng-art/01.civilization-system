# ============================================================
# PERSONA AUTHORITY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona authority structures.

# 2. OPERATIONAL CONTROLS

- authority-definition review
- grant/rule review
- active/suspended state inspection
- authority audit inspection

# 3. FAILURE OPERATIONS

- missing subject or authority scope -> reject
- invalid grant or rule binding -> block
- hidden authority mutation -> fail closed

