# ============================================================
# INTEGRATION CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for integration core handling.

# 2. TRIGGER

- integration create/update request
- endpoint update
- contract revision
- status change request

# 3. MAIN FLOW

1. create or resolve integration_definition
2. bind integration_endpoint set
3. bind integration_contract set
4. validate integration scope and contract consistency
5. persist integration_status
6. emit audit trace

# 4. FAILURE FLOW

- missing integration scope -> reject
- invalid endpoint or contract binding -> reject
- hidden integration-core mutation -> fail closed

# 5. OUTPUT

- integration core state
- endpoint/contract state
- audit record

