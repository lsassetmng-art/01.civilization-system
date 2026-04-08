# ============================================================
# EXECUTION CONTROL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for execution control.

# 2. OPERATIONAL CONTROLS

- controller review
- window/mode review
- blocked/active state inspection
- execution audit inspection

# 3. FAILURE OPERATIONS

- missing controller scope -> reject
- incompatible overlapping window -> block
- blocked execution continuation -> fail closed

