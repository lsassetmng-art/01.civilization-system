# ============================================================
# COMPOSITION DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for composition detail structures.

# 2. RUNTIME STATE

- active composition-detail state
- composition-item resolution state
- composition-rule resolution state
- active/revised composition state

# 3. EXECUTION RULES

- composition scope, items, and rules must resolve before publication
- revised composition state must preserve composition-detail identity
- active and revised states must be explicit
- hidden composition-detail mutation is prohibited

# 4. FAILURE HANDLING

- missing composition scope -> reject
- invalid item or rule binding -> reject
- hidden composition-detail mutation -> fail closed

