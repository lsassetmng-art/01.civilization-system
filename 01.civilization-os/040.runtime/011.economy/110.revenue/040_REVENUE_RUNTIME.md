# ============================================================
# REVENUE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for revenue handling.

# 2. RUNTIME STATE

- active revenue record state
- source resolution state
- allocation publication state
- settlement reference state

# 3. EXECUTION RULES

- source scope must resolve before allocation
- allocation must preserve revenue identity
- settlement reference must follow persisted revenue state
- hidden revenue mutation is prohibited

# 4. FAILURE HANDLING

- missing source scope -> reject
- invalid allocation scope -> reject
- hidden revenue mutation -> fail closed

