# ============================================================
# WORLD ACCESS BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for world access bindings.

# 2. OPERATIONAL CONTROLS

- access-binding review
- subject/rule review
- active/blocked state inspection
- world-access-binding audit inspection

# 3. FAILURE OPERATIONS

- missing world or subject scope -> reject
- invalid reference or rule binding -> block
- hidden access-binding mutation -> fail closed

