# ============================================================
# AUTHORIZATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for authorization structures.

# 2. RUNTIME STATE

- active authorization-policy state
- subject resolution state
- authorization-rule resolution state
- active/blocked authorization state

# 3. EXECUTION RULES

- authorization scope, subject set, and rules must resolve before publication
- blocked authorization state must prevent unauthorized execution
- active and blocked states must be explicit
- hidden authorization mutation is prohibited

# 4. FAILURE HANDLING

- missing authorization or subject scope -> reject
- invalid subject or rule binding -> reject
- hidden authorization mutation -> fail closed

