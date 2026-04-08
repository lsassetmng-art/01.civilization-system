# ============================================================
# AERIAL WORLD STABILIZATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for Aerial world stabilization.

# 2. RUNTIME STATE

- active support context
- stabilization signal set
- assistive action state
- escalation publication state

# 3. EXECUTION RULES

- support context must exist before assistive action
- escalation requires explicit target and reason
- assistive path must remain distinct from stronger intervention path
- hidden direct control through support path is prohibited

# 4. FAILURE HANDLING

- missing support context -> reject
- invalid escalation target -> reject
- boundary confusion -> fail closed

