# ============================================================
# INTEGRATION CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for integration core structures.

# 2. OPERATIONAL CONTROLS

- integration-definition review
- endpoint/contract review
- active/suspended state inspection
- integration-core audit inspection

# 3. FAILURE OPERATIONS

- missing integration scope -> reject
- invalid endpoint or contract binding -> block
- hidden integration-core mutation -> fail closed

