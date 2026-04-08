# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for famine and shortage calculation.

# 2. RUNTIME STATE

- active food supply state
- active threshold set
- famine risk evaluation state
- shortage impact publication state

# 3. EXECUTION RULES

- supply state must be region-bound
- threshold resolution must complete before risk publication
- famine risk and shortage impact must share validated scope
- partial risk publication is prohibited

# 4. FAILURE HANDLING

- missing supply state -> reject
- ambiguous threshold -> reject
- inconsistent impact scope -> fail closed

