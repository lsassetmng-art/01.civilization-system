# ============================================================
# LEGAL ROLE BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for legal role bindings.

# 2. SECURITY SCOPE

- role-definition integrity
- binding authorization
- status integrity
- legal-role audit protection

# 3. SECURITY RULES

- subject scope, jurisdiction scope, and binding reason must remain attributable
- role-state mutation requires explicit authorization
- hidden legal-role mutation must be detectable
- audit output must preserve role-binding identity

