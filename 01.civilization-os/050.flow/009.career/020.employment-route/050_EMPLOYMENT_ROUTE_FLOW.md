# ============================================================
# EMPLOYMENT ROUTE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for employment route handling.

# 2. TRIGGER

- employment route creation/update
- stage update
- condition update

# 3. MAIN FLOW

1. create or resolve employment_route_definition
2. bind employment_route_stage set
3. bind route_condition set
4. validate deterministic stage order and scope
5. persist route_status
6. emit audit trace

# 4. FAILURE FLOW

- missing route scope -> reject
- invalid stage or condition binding -> reject
- hidden employment-route mutation -> fail closed

# 5. OUTPUT

- employment route state
- stage/condition/status state
- audit record

