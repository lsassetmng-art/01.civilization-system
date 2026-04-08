# ============================================================
# SECURITY CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for security core structures.

# 2. OPERATIONAL CONTROLS

- security-definition review
- scope/version review
- active/suspended state inspection
- security-core audit inspection

# 3. FAILURE OPERATIONS

- missing security scope -> reject
- invalid binding or version state -> block
- hidden security-core mutation -> fail closed

