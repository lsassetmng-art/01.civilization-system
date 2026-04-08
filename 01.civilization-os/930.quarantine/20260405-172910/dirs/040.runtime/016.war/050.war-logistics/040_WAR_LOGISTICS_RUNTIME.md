# ============================================================
# WAR LOGISTICS
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for war logistics structures.

# 2. RUNTIME STATE

- active logistics-plan state
- logistics-route resolution state
- resource-rule resolution state
- active/blocked logistics state

# 3. EXECUTION RULES

- logistics scope, routes, and resource rules must resolve before publication
- blocked logistics state must prevent unauthorized logistics execution
- active and blocked states must be explicit
- hidden war-logistics mutation is prohibited

# 4. FAILURE HANDLING

- missing logistics scope -> reject
- invalid route or resource binding -> reject
- hidden war-logistics mutation -> fail closed

