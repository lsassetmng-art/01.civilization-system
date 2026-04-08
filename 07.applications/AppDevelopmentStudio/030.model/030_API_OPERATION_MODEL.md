# ============================================================
# API OPERATION MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines a single application API operation.

minimum_fields:
- api_operation_id
- operation_code
- operation_name
- operation_group
- request_schema_ref
- response_schema_ref
- error_schema_ref
- auth_scope
- status
- created_at
- updated_at
