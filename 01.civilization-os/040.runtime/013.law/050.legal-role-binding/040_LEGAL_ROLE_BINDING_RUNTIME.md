# ============================================================
# LEGAL ROLE BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for legal role binding.

# 2. RUNTIME STATE

- active legal-role definition
- subject/jurisdiction scope resolution state
- binding-state transition state
- active/suspended publication state

# 3. EXECUTION RULES

- legal role definition and scope must resolve before binding publication
- active and suspended states must be explicit
- binding reason must exist before role-state mutation
- hidden legal-role mutation is prohibited

# 4. FAILURE HANDLING

- missing subject or jurisdiction scope -> reject
- invalid role binding state -> reject
- hidden legal-role mutation -> fail closed

