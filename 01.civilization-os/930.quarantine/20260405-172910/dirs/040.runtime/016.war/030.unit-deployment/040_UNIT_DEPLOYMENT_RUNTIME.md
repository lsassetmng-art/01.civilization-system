# ============================================================
# UNIT DEPLOYMENT
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for unit deployment structures.

# 2. RUNTIME STATE

- active deployment state
- deployed-unit resolution state
- deployment-rule resolution state
- active/blocked deployment state

# 3. EXECUTION RULES

- deployment scope, unit references, and rules must resolve before publication
- blocked deployment state must prevent unauthorized deployment execution
- active and blocked states must be explicit
- hidden unit-deployment mutation is prohibited

# 4. FAILURE HANDLING

- missing deployment or unit scope -> reject
- invalid unit or rule binding -> reject
- hidden unit-deployment mutation -> fail closed

