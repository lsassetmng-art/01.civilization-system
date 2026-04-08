# ============================================================
# OCCUPATION SYSTEM
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for occupation system structures.

# 2. RUNTIME STATE

- active occupation-definition state
- occupation-family resolution state
- occupation-rule resolution state
- active/revised publication state

# 3. EXECUTION RULES

- occupation and family scope must resolve before downstream publication
- rule set must resolve before active-state publication
- active and revised states must be explicit
- hidden occupation mutation is prohibited

# 4. FAILURE HANDLING

- missing occupation or family scope -> reject
- invalid rule binding -> reject
- hidden occupation mutation -> fail closed

