# ============================================================
# CONSTRAINT DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for constraint detail structures.

# 2. RUNTIME STATE

- active constraint-detail state
- constraint-item resolution state
- constraint-rule resolution state
- active/blocked constraint state

# 3. EXECUTION RULES

- constraint scope, items, and rules must resolve before publication
- blocked constraint state must prevent unauthorized constraint execution
- active and blocked states must be explicit
- hidden constraint-detail mutation is prohibited

# 4. FAILURE HANDLING

- missing constraint scope -> reject
- invalid item or rule binding -> reject
- hidden constraint-detail mutation -> fail closed

