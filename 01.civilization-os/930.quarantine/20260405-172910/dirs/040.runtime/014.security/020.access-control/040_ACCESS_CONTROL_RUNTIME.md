# ============================================================
# ACCESS CONTROL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for access control structures.

# 2. RUNTIME STATE

- active access-control policy state
- subject resolution state
- permission-rule resolution state
- active/blocked access state

# 3. EXECUTION RULES

- access scope, subject set, and permission rules must resolve before publication
- blocked access state must prevent unauthorized access execution
- active and blocked states must be explicit
- hidden access-control mutation is prohibited

# 4. FAILURE HANDLING

- missing access or subject scope -> reject
- invalid subject or permission binding -> reject
- hidden access-control mutation -> fail closed

