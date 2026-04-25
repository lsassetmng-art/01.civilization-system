# ============================================================
# AI OPERATION DESK API DB MAPPING EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: api
owner: Boss
prepared_by: Zero

mapping:

POST /api/ai-operation-desk/requests:
- business.aiod_operation_request
- business.aiod_operation_request_attachment
- business.aiod_resident_context_snapshot
- optional compile to business.aiod_work_order

POST /api/ai-operation-desk/supported-app/explain:
- read business.aiod_supported_app_registry
- read business.aiod_supported_app_qa_scope
- read context snapshot when present

POST /api/ai-operation-desk/erp/provisional-voucher:
- read business.aiod_supported_app_registry
- write business.aiod_operation_request
- write business.aiod_work_order
- write business.aiod_work_order_target_binding
- write business.aiod_work_order_output_binding

POST /api/ai-operation-desk/execution-requests:
- write business.aiod_work_order
- write business.aiod_work_order_target_binding
- write business.aiod_work_order_output_binding
- optional write business.aiod_review_request
- optional write business.aiod_approval_request

POST /api/ai-operation-desk/reviews/{id}/decide:
- update business.aiod_review_request
- update business.aiod_work_order
- write business.aiod_audit_trace

POST /api/ai-operation-desk/approvals/{id}/decide:
- update business.aiod_approval_request
- update business.aiod_work_order
- write business.aiod_audit_trace

GET /api/ai-operation-desk/queue:
- read business.aiod_work_order
- read business.aiod_execution_job
- read business.aiod_review_request
- read business.aiod_approval_request

GET /api/ai-operation-desk/failures:
- read business.aiod_failure_record
- read business.aiod_retry_plan
- read business.aiod_execution_job

POST /api/ai-operation-desk/retries/{id}/schedule:
- update business.aiod_retry_plan
- write business.aiod_audit_trace

PUT /api/ai-operation-desk/notification-rules:
- write business.aiod_notification_rule
