# ============================================================
# LEGAL ROLE BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for legal role binding.

# 2. TRIGGER

- legal role assignment
- role suspension/reactivation
- jurisdiction scope update

# 3. MAIN FLOW

1. resolve legal_role_definition
2. resolve legal_role_scope
3. create or update legal_role_binding
4. validate subject scope and binding reason
5. persist legal_role_status
6. emit audit trace

# 4. FAILURE FLOW

- missing subject or jurisdiction scope -> reject
- invalid role binding state -> reject
- hidden legal-role mutation -> fail closed

# 5. OUTPUT

- legal role binding state
- role status
- audit record

