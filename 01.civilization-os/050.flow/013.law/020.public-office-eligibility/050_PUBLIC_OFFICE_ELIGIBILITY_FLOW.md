# ============================================================
# PUBLIC OFFICE ELIGIBILITY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for public office eligibility.

# 2. TRIGGER

- candidate eligibility review
- eligibility rule update
- office registration request

# 3. MAIN FLOW

1. resolve public_office_eligibility_rule
2. resolve public_office_requirement set
3. create eligibility_evaluation
4. evaluate candidate against requirements
5. persist eligibility_result
6. emit audit trace

# 4. FAILURE FLOW

- missing office scope -> reject
- invalid requirement set -> reject
- hidden eligibility override -> fail closed

# 5. OUTPUT

- evaluation state
- eligibility result
- audit record

