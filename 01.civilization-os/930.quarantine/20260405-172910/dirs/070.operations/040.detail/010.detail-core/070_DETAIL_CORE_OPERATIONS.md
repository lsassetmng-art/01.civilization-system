# ============================================================
# DETAIL CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for detail core structures.

# 2. OPERATIONAL CONTROLS

- detail-definition review
- scope/version review
- active/suspended state inspection
- detail-core audit inspection

# 3. FAILURE OPERATIONS

- missing detail scope -> reject
- invalid binding or version state -> block
- hidden detail-core mutation -> fail closed

