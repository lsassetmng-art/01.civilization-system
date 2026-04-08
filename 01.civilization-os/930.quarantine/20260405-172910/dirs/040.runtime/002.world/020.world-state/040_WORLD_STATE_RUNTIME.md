# ============================================================
# WORLD STATE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for world state structures.

# 2. RUNTIME STATE

- active world-state record
- condition-state resolution
- metric-state resolution
- active/frozen publication state

# 3. EXECUTION RULES

- state scope, condition state, and metric state must resolve before publication
- frozen state must block unauthorized state mutation
- one explicit state record must be active per runtime context
- hidden world-state mutation is prohibited

# 4. FAILURE HANDLING

- missing state scope -> reject
- invalid condition or metric binding -> reject
- hidden world-state mutation -> fail closed

