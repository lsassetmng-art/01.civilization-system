# ============================================================
# DISASTER CALCULATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for disaster calculation.

# 2. RUNTIME STATE

- active disaster profile set
- region risk evaluation state
- occurrence trigger state
- disaster impact publication state

# 3. EXECUTION RULES

- risk evaluation must bind to one region and one disaster type
- occurrence creation requires explicit threshold satisfaction
- impact publication must follow occurrence persistence
- ambiguous severity source is prohibited

# 4. FAILURE HANDLING

- missing profile -> reject
- invalid risk scope -> reject
- inconsistent occurrence severity -> fail closed

