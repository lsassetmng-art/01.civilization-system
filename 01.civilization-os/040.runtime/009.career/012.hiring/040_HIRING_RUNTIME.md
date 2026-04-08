# ============================================================
# HIRING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for hiring structures.

# 2. RUNTIME STATE

- active hiring-case state
- candidate resolution state
- decision publication state
- hiring-record state

# 3. EXECUTION RULES

- employer and candidate scope must resolve before decision publication
- decision state must be explicit before hiring record creation
- hiring record must preserve hiring-case identity
- hidden hiring mutation is prohibited

# 4. FAILURE HANDLING

- missing employer or candidate scope -> reject
- invalid candidate binding -> reject
- hidden hiring mutation -> fail closed

