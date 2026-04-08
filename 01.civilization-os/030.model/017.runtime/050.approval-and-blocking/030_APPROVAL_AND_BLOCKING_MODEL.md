# ============================================================
# APPROVAL AND BLOCKING
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for runtime approval and blocking.

# 2. CORE ENTITIES

- runtime_approval_request
- runtime_approval_decision
- runtime_block_rule
- runtime_block_record

# 3. STATE MODEL

runtime_approval_request:
- runtime_approval_request_id
- request_scope
- request_type_code
- request_status
- requested_at

runtime_approval_decision:
- runtime_approval_decision_id
- runtime_approval_request_id
- decision_code
- decision_scope
- decision_status

runtime_block_rule:
- runtime_block_rule_id
- rule_scope
- block_type_code
- block_condition
- rule_status

runtime_block_record:
- runtime_block_record_id
- runtime_block_rule_id
- blocked_scope
- block_status
- blocked_at

# 4. INTEGRITY RULES

- decision must belong to one approval request
- block record must reference one block rule
- request and block scope must be explicit
- hidden blocking without record is prohibited

