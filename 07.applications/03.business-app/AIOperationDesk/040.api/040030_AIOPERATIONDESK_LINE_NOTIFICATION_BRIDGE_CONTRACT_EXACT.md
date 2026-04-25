# ============================================================
# AI OPERATION DESK LINE NOTIFICATION BRIDGE CONTRACT EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: api
owner: Boss
prepared_by: Zero

purpose:
Define the internal notification bridge contract for LINE-like delivery.

bridge_position:
- AI Operation Desk decides when notification is needed.
- Notification bridge handles actual delivery.
- This document defines the handoff contract, not vendor-specific SDK details.

bridge_endpoint_contract:
- POST /internal/ai-operation-desk/notification-bridge/dispatch

request_envelope:
{
  "notification_event_id": "uuid",
  "notification_type": "review_pending|approval_pending|confirmation_required|execution_failed|retry_scheduled|completed_with_warning|completed_summary_available",
  "destination_type": "line",
  "destination_ref": "string",
  "title": "string",
  "body": "string",
  "payload": {
    "work_order_id": "uuid|null",
    "summary_batch_id": "uuid|null",
    "supported_app_code": "string|null",
    "lane_type": "consult|draft|execution|null",
    "risk_class": "low|medium|high|privileged|null",
    "failure_code": "string|null",
    "retry_plan_id": "uuid|null",
    "created_at": "ISO-8601"
  }
}

response_envelope:
{
  "notification_event_id": "uuid",
  "delivery_status": "sent|failed",
  "provider_message_ref": "string|null",
  "provider_error_code": "string|null",
  "provider_error_summary": "string|null",
  "processed_at": "ISO-8601"
}

message_composition_rules:
- title must be short and actionable
- body must summarize only the needed action or warning
- no privileged raw detail in bridge payload by default
- detailed follow-up remains inside AIOperationDesk surfaces

type_guidance:
- review_pending:
  - title:
    review needed
- approval_pending:
  - title:
    approval needed
- confirmation_required:
  - title:
    confirmation needed
- execution_failed:
  - title:
    execution failed
- retry_scheduled:
  - title:
    retry scheduled
- completed_with_warning:
  - title:
    completed with warning
- completed_summary_available:
  - title:
    batch summary available

retry_rules:
- failed bridge delivery may be retried
- retry policy is operational and separate from business work-order retry
- bridge retry must not duplicate canonical business action
