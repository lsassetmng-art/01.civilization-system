# ============================================================
# ATTRIBUTE DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for attribute detail structures.

# 2. RUNTIME STATE

- active attribute-detail state
- attribute-item resolution state
- attribute-rule resolution state
- active/revised attribute state

# 3. EXECUTION RULES

- attribute scope, items, and rules must resolve before publication
- revised attribute state must preserve attribute-detail identity
- active and revised states must be explicit
- hidden attribute-detail mutation is prohibited

# 4. FAILURE HANDLING

- missing attribute scope -> reject
- invalid item or rule binding -> reject
- hidden attribute-detail mutation -> fail closed

