# ============================================================
# AERIAL WORLD STABILIZATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for Aerial world stabilization.

# 2. OPERATIONAL CONTROLS

- support context review
- assistive action monitoring
- escalation review
- support/control distinction audit

# 3. FAILURE OPERATIONS

- missing context -> reject
- invalid escalation target -> block
- hidden direct control through support path -> fail closed

