# ============================================================
# SYNC BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for sync bindings.

# 2. OPERATIONAL CONTROLS

- sync-binding review
- target/rule review
- active/blocked state inspection
- sync-binding audit inspection

# 3. FAILURE OPERATIONS

- missing sync scope -> reject
- invalid target or rule binding -> block
- hidden sync mutation -> fail closed

