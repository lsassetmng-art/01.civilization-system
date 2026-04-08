# ============================================================
# MODE CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for mode core structures.

# 2. OPERATIONAL CONTROLS

- mode-definition review
- scope/version review
- active/suspended state inspection
- mode-core audit inspection

# 3. FAILURE OPERATIONS

- missing mode scope -> reject
- invalid binding or version state -> block
- hidden mode-core mutation -> fail closed

