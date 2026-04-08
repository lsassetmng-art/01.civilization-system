# ============================================================
# LEGAL ROLE BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for legal role bindings.

# 2. POLICY RULES

- role definition, subject scope, jurisdiction scope, and binding reason must be explicit
- active and suspended state must be explicit
- hidden legal-role mutation is prohibited
- implicit legal-role reassignment is prohibited

# 3. FAILURE RULE

- missing subject or jurisdiction scope must reject
- invalid binding state must reject
- hidden legal-role mutation must reject

