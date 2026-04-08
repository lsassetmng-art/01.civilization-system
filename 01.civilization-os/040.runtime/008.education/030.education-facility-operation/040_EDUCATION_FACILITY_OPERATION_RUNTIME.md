# ============================================================
# EDUCATION FACILITY OPERATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for education facility operations.

# 2. RUNTIME STATE

- active education-facility state
- operation-rule resolution state
- capacity and occupancy state
- maintenance/operation publication state

# 3. EXECUTION RULES

- facility scope and rule set must resolve before operation publication
- capacity and occupancy must validate before admission or scheduling use
- maintenance and operation state must be explicit
- hidden facility-status mutation is prohibited

# 4. FAILURE HANDLING

- missing facility scope -> reject
- invalid capacity or rule binding -> reject
- hidden facility-status mutation -> fail closed

