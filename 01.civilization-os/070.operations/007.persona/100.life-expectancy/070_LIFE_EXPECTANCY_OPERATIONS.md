# ============================================================
# LIFE EXPECTANCY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona life expectancy.

# 2. OPERATIONAL CONTROLS

- profile/factor review
- expectancy-state inspection
- adjustment review
- expectancy audit inspection

# 3. FAILURE OPERATIONS

- missing profile -> reject
- ambiguous factor provenance -> block
- hidden expectancy mutation -> fail closed

