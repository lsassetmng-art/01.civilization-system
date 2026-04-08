# ============================================================
# POPULATION STRUCTURE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for population structure updates.

# 2. RUNTIME STATE

- population distribution update state
- demographic state update
- migration evaluation state
- publication and audit state

# 3. EXECUTION RULES

- distribution update must bind one measurement point
- migration update must preserve explicit source and target region
- demographic publication must follow distribution validation
- inconsistent migration loops are prohibited

# 4. FAILURE HANDLING

- missing classification -> reject
- inconsistent source/target region -> reject
- ambiguous measurement point -> fail closed

