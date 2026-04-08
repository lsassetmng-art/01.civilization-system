# ============================================================
# GLOBAL STATE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for global-state monitoring.

# 2. OPERATIONAL CONTROLS

- snapshot cycle review
- indicator completeness monitoring
- alert review
- adjustment flag review

# 3. FAILURE OPERATIONS

- incomplete snapshot -> reject publication
- conflicting alert severity -> alert and block
- ambiguous adjustment scope -> fail closed

