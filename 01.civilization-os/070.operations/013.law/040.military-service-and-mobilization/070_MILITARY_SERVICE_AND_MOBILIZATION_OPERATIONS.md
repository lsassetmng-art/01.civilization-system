# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for military service and mobilization.

# 2. OPERATIONAL CONTROLS

- service-rule review
- obligation-state review
- mobilization-order inspection
- mobilization audit inspection

# 3. FAILURE OPERATIONS

- missing order scope -> reject
- invalid obligation binding -> block
- hidden mobilization without order -> fail closed

