# ============================================================
# DEATH AND MORTALITY CALCULATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for death and mortality calculation.

# 2. RUNTIME STATE

- active mortality profile
- regional mortality evaluation state
- aggregate write state
- impact publication state

# 3. EXECUTION RULES

- mortality calculation must bind to explicit region and period
- death aggregate must persist before impact publication
- severity source must be explicit
- aggregate inconsistency must block publication

# 4. FAILURE HANDLING

- missing profile -> reject
- inconsistent period aggregate -> reject
- ambiguous severity -> fail closed

