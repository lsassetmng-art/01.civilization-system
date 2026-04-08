# ============================================================
# AERIAL SUPPORT GOVERNOR
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for Aerial support governance.

# 2. OPERATIONAL CONTROLS

- support context review
- assistive action result monitoring
- escalation review
- support/control distinction audit

# 3. FAILURE OPERATIONS

- missing support context -> reject
- invalid escalation target -> reject
- direct control through support path -> block and escalate
- boundary confusion -> fail closed

