# ============================================================
# MODE REWARD BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for mode reward bindings.

# 2. OPERATIONAL CONTROLS

- reward-binding review
- reference/rule review
- active/blocked state inspection
- mode-reward-binding audit inspection

# 3. FAILURE OPERATIONS

- missing reward scope -> reject
- invalid reference or rule binding -> block
- hidden reward-binding mutation -> fail closed

