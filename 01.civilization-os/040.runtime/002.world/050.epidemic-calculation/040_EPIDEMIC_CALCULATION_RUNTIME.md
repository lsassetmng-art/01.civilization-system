# ============================================================
# EPIDEMIC CALCULATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for epidemic calculation.

# 2. RUNTIME STATE

- active epidemic profile
- infection evaluation state
- epidemic wave state
- impact publication state

# 3. EXECUTION RULES

- infection evaluation must bind to explicit region and epidemic type
- wave state must be explicit before impact publication
- spread formula source must be explicit
- inconsistent wave transitions are prohibited

# 4. FAILURE HANDLING

- missing epidemic profile -> reject
- ambiguous wave state -> reject
- inconsistent region/type binding -> fail closed

