# ============================================================
# META CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for meta core structures.

# 2. OPERATIONAL CONTROLS

- meta-definition review
- scope/version review
- active/suspended state inspection
- meta-core audit inspection

# 3. FAILURE OPERATIONS

- missing meta scope -> reject
- invalid binding or version state -> block
- hidden meta-core mutation -> fail closed

