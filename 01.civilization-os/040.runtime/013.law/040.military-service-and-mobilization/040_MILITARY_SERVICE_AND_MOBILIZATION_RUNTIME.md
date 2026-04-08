# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for military service and mobilization.

# 2. RUNTIME STATE

- active military-service rule state
- service-obligation resolution state
- mobilization-order execution state
- mobilization-status publication state

# 3. EXECUTION RULES

- obligation state and order scope must resolve before mobilization execution
- mobilization status must preserve order identity
- hidden mobilization without order is prohibited
- invalid obligation binding must block execution

# 4. FAILURE HANDLING

- missing order scope -> reject
- invalid obligation binding -> reject
- hidden mobilization without order -> fail closed

