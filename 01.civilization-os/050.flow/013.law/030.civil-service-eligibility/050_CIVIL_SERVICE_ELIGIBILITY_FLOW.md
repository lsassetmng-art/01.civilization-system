# ============================================================
# CIVIL SERVICE ELIGIBILITY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for civil service eligibility.

# 2. TRIGGER

- service-role eligibility review
- civil-service rule update
- appointment request

# 3. MAIN FLOW

1. resolve civil_service_rule
2. resolve civil_service_requirement set
3. create civil_service_evaluation
4. evaluate candidate against requirements
5. persist civil_service_result
6. emit audit trace

# 4. FAILURE FLOW

- missing service-role scope -> reject
- invalid requirement set -> reject
- hidden eligibility override -> fail closed

# 5. OUTPUT

- evaluation state
- service eligibility result
- audit record

