# ============================================================
# REWARD DEFINITION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for reward definitions.

# 2. OPERATIONAL CONTROLS

- definition version review
- source/condition/value-set review
- compatibility inspection
- reward-definition audit inspection

# 3. FAILURE OPERATIONS

- missing source -> reject
- invalid condition/value compatibility -> block
- ambiguous version state -> fail closed

