# ============================================================
# EVALUATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for career evaluation structures.

# 2. OPERATIONAL CONTROLS

- evaluation-definition review
- session/metric review
- result inspection
- evaluation audit inspection

# 3. FAILURE OPERATIONS

- missing evaluation or subject scope -> reject
- invalid metric binding -> block
- hidden evaluation-result mutation -> fail closed

