# ============================================================
# EDUCATION FACILITY OPERATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for education facility operations.

# 2. OPERATIONAL CONTROLS

- facility-definition review
- operation-rule review
- capacity inspection
- facility audit inspection

# 3. FAILURE OPERATIONS

- missing facility scope -> reject
- invalid capacity or rule binding -> block
- hidden facility-status mutation -> fail closed

