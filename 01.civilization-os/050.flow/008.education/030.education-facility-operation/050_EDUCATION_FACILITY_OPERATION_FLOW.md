# ============================================================
# EDUCATION FACILITY OPERATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for education facility operations.

# 2. TRIGGER

- facility creation/update
- operation-rule update
- capacity review
- maintenance/state change

# 3. MAIN FLOW

1. create or resolve education_facility
2. bind facility_operation_rule set
3. calculate or update facility_capacity_state
4. validate operation and maintenance constraints
5. persist facility_operation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing facility scope -> reject
- invalid capacity or rule binding -> reject
- hidden facility-status mutation -> fail closed

# 5. OUTPUT

- facility state
- rule/capacity/status state
- audit record

