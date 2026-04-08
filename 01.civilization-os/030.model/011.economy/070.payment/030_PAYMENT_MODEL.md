# ============================================================
# PAYMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for payments.

# 2. CORE ENTITIES

- payment_request
- payment_method_ref
- payment_execution
- payment_failure

# 3. STATE MODEL

payment_request:
- payment_request_id
- payer_scope
- payee_scope
- requested_value
- request_status

payment_method_ref:
- payment_method_ref_id
- payment_request_id
- method_type_code
- provider_scope
- method_status

payment_execution:
- payment_execution_id
- payment_request_id
- executed_value
- executed_at
- execution_status

payment_failure:
- payment_failure_id
- payment_request_id
- failure_reason
- failure_status
- failed_at

# 4. INTEGRITY RULES

- payment request must preserve payer and payee scope
- execution/failure must reference one request
- requested and executed value must be attributable
- hidden payment mutation is prohibited

