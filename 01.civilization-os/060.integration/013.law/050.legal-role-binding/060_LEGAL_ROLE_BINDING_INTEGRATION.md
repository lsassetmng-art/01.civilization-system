# ============================================================
# LEGAL ROLE BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for legal role bindings.

# 2. INTEGRATION SCOPE

- legal-role definitions to law/governance consumers
- binding states to authority and enforcement systems
- legal-role audit to operations

# 3. INTEGRATION RULES

- subject scope, jurisdiction scope, and binding reason must be explicit before handoff
- active/suspended state must preserve binding identity
- hidden legal-role mutation must not cross boundary
- ambiguous binding state must fail closed

