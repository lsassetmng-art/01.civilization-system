# ============================================================
# AI OPERATION DESK API REQUEST RESPONSE EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: api
owner: Boss
prepared_by: Zero

purpose:
Define exact API groups and exact payload structures for v1.

# ------------------------------------------------------------
# 1. REQUEST INTAKE
# ------------------------------------------------------------

endpoint:
- POST /api/ai-operation-desk/requests

request_json:
{
  "request_channel": "text|voice",
  "request_text": "string",
  "voice_transcript": "string|null",
  "requested_start_at": "ISO-8601|null",
  "supported_app_code": "string|null",
  "lane_type": "consult|draft|execution|null",
  "priority_level": "normal|high|urgent",
  "source_surface_type": "main_console|erp_resident_surface|builder_resident_surface|app_help_surface|pocketsecretary_exception",
  "resident_context_snapshot": {
    "current_screen_code": "string|null",
    "current_module_code": "string|null",
    "current_record_ref": "string|null",
    "current_field_code": "string|null",
    "current_company_ref": "string|null",
    "latest_error_code": "string|null",
    "entered_value_json": {},
    "permission_context_json": {}
  },
  "attachments": [
    {
      "storage_ref": "string",
      "original_name": "string",
      "mime_type": "string"
    }
  ]
}

response_json:
{
  "operation_request_id": "uuid",
  "request_status": "received|parsed|compiled",
  "compiled_work_order_id": "uuid|null",
  "supported_app_resolved": true,
  "lane_type_resolved": "consult|draft|execution",
  "risk_class": "low|medium|high|privileged",
  "review_required": true,
  "approval_required": false
}

# ------------------------------------------------------------
# 2. SUPPORTED APP EXPLANATION
# ------------------------------------------------------------

endpoint:
- POST /api/ai-operation-desk/supported-app/explain

request_json:
{
  "supported_app_code": "string",
  "question_type": "overview|field|operation|error|capability",
  "question_text": "string",
  "resident_context_snapshot": {
    "current_screen_code": "string|null",
    "current_field_code": "string|null",
    "latest_error_code": "string|null"
  }
}

response_json:
{
  "supported": true,
  "answer_type": "overview|field|operation|error|capability",
  "answer_text": "string",
  "related_task_types": ["string"],
  "resident_followup_actions": [
    "create_draft_request",
    "open_execution_request",
    "show_common_errors"
  ]
}

# ------------------------------------------------------------
# 3. ERP PROVISIONAL VOUCHER DRAFT
# ------------------------------------------------------------

endpoint:
- POST /api/ai-operation-desk/erp/provisional-voucher

request_json:
{
  "company_ref": "string",
  "voucher_type_code": "string",
  "draft_reason_text": "string",
  "line_items": [
    {
      "item_code": "string",
      "quantity": "number",
      "unit_price": "number|null"
    }
  ],
  "currency_code": "string",
  "requested_start_at": "ISO-8601|null",
  "resident_context_snapshot_id": "uuid|null"
}

response_json:
{
  "operation_request_id": "uuid",
  "work_order_id": "uuid",
  "lane_type": "draft",
  "draft_status": "prepared",
  "review_required": true,
  "approval_required": false
}

# ------------------------------------------------------------
# 4. EXECUTION REQUEST CREATION
# ------------------------------------------------------------

endpoint:
- POST /api/ai-operation-desk/execution-requests

request_json:
{
  "supported_app_code": "string",
  "work_type_code": "string",
  "trigger_mode": "none|time|explicit_click|retry|pocketsecretary_exception",
  "scheduled_at": "ISO-8601|null",
  "target_bindings": [
    {
      "binding_type": "company|customer|record|voucher|builder_asset|screen|module",
      "target_ref": "string",
      "target_label": "string"
    }
  ],
  "output_bindings": [
    {
      "output_type": "draft_document|provisional_voucher|review_package|approval_package|retry_package|summary_digest",
      "destination_type": "app_surface|queue|review|approval|summary",
      "destination_ref": "string|null"
    }
  ]
}

response_json:
{
  "work_order_id": "uuid",
  "work_order_status": "draft|waiting_trigger|review_pending|approval_pending|ready",
  "risk_class": "low|medium|high|privileged",
  "review_required": true,
  "approval_required": true
}

# ------------------------------------------------------------
# 5. REVIEW / APPROVAL ACTIONS
# ------------------------------------------------------------

endpoint:
- POST /api/ai-operation-desk/reviews/{review_request_id}/decide
- POST /api/ai-operation-desk/approvals/{approval_request_id}/decide

request_json:
{
  "decision": "approved|returned|rejected",
  "comment_text": "string|null"
}

response_json:
{
  "decision_status": "approved|returned|rejected",
  "affected_work_order_status": "ready|cancelled|draft"
}

# ------------------------------------------------------------
# 6. QUEUE / FAILURE / RETRY
# ------------------------------------------------------------

endpoint:
- GET /api/ai-operation-desk/queue
- GET /api/ai-operation-desk/failures
- POST /api/ai-operation-desk/retries/{retry_plan_id}/schedule

queue_response_json:
{
  "items": [
    {
      "work_order_id": "uuid",
      "supported_app_code": "string",
      "lane_type": "consult|draft|execution",
      "work_order_status": "string",
      "risk_class": "string",
      "scheduled_at": "ISO-8601|null"
    }
  ]
}

retry_request_json:
{
  "next_retry_at": "ISO-8601",
  "comment_text": "string|null"
}

retry_response_json:
{
  "retry_plan_id": "uuid",
  "retry_status": "scheduled"
}

# ------------------------------------------------------------
# 7. NOTIFICATION SETTINGS
# ------------------------------------------------------------

endpoint:
- PUT /api/ai-operation-desk/notification-rules

request_json:
{
  "notify_review_pending": true,
  "notify_approval_pending": true,
  "notify_confirmation_required": true,
  "notify_execution_failed": true,
  "notify_retry_scheduled": true,
  "notify_completed_with_warning": true,
  "notify_completed_summary_available": true,
  "line_destination_ref": "string"
}

response_json:
{
  "saved": true,
  "notification_rule_id": "uuid"
}
