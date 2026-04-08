# ============================================================
# CIVIL SERVICE ELIGIBILITY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for civil service eligibility.

# 2. INTEGRATION SCOPE

- service-eligibility rules to appointment systems
- evaluations and results to civil-service consumers
- eligibility audit to operations

# 3. INTEGRATION RULES

- service-role scope, candidate scope, and requirements must be explicit before handoff
- result handoff must preserve evaluation identity
- hidden eligibility override must not cross boundary
- ambiguous result state must fail closed

