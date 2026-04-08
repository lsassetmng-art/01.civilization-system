# ============================================================
# MODE PARTICIPANT BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for mode participant bindings.

# 2. OPERATIONAL CONTROLS

- participant-binding review
- reference/rule review
- active/blocked state inspection
- mode-participant-binding audit inspection

# 3. FAILURE OPERATIONS

- missing participant scope -> reject
- invalid reference or rule binding -> block
- hidden participant-binding mutation -> fail closed

