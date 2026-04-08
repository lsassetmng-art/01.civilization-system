# ============================================================
# INTEGRATION CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for integration structures.

# 2. CORE ENTITIES

- integration_definition
- integration_endpoint
- integration_contract
- integration_status

# 3. STATE MODEL

integration_definition:
- integration_definition_id
- integration_code
- integration_type_code
- integration_scope
- integration_status

integration_endpoint:
- integration_endpoint_id
- integration_definition_id
- endpoint_code
- endpoint_scope
- endpoint_status

integration_contract:
- integration_contract_id
- integration_definition_id
- contract_code
- contract_version
- contract_status

integration_status:
- integration_status_id
- integration_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- endpoint and contract must belong to one integration definition
- integration scope must be explicit
- active and suspended state must be explicit
- hidden integration-core mutation is prohibited

