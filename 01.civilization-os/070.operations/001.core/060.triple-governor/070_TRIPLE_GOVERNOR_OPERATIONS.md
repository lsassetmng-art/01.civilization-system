# ============================================================
# TRIPLE GOVERNOR
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for Triple governor oversight.

# 2. OPERATIONAL CONTROLS

- signal intake review
- authority mode inspection
- adjustment publication review
- reason trace verification

# 3. FAILURE OPERATIONS

- missing authority mode -> reject
- undeclared adjustment channel -> block
- missing reason trace -> reject and alert
- hidden direct mutation suspicion -> fail closed and escalate

