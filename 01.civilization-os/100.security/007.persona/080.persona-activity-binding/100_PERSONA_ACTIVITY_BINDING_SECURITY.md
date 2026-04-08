# ============================================================
# PERSONA ACTIVITY BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for persona activity bindings.

# 2. SECURITY SCOPE

- activity-binding integrity
- reference/rule authorization
- active/blocked state integrity
- activity-binding audit protection

# 3. SECURITY RULES

- persona scope, activity scope, and rule set must be tamper-evident
- reference and rule changes require explicit authorization
- hidden activity-binding mutation must be detectable
- audit output must preserve activity-binding identity

