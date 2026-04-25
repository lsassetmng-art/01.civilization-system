# ============================================================
# AICompanyManager Local Queue Exact Payload
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase B
status: local-queue-payload-fixed

## 1. Purpose

This document defines offline-first local queue payloads.

CommonOS owns queue presentation.
AICompanyManager owns queue business meaning.

## 2. Queue Type

- policy_save_draft
- policy_submit
- pipeline_start
- pipeline_snapshot_pull
- review_comment_submit
- return_request_submit
- human_approval_submit
- human_revision_request_submit
- delivery_acceptance_submit
- audit_log_flush

## 3. Common Queue Envelope

{
  "queue_item_id": "uuid",
  "queue_type": "policy_submit",
  "owner_user_id": "uuid",
  "project_id": "uuid",
  "pipeline_run_id": "uuid",
  "payload_version": 1,
  "payload": {},
  "created_at": "timestamp",
  "client_context": {
    "device_id": "string",
    "app_version": "string",
    "offline": true
  }
}

## 4. policy_submit Payload

{
  "project_id": "uuid",
  "policy": {
    "policy_title": "string",
    "business_goal": "string",
    "expected_output": "string",
    "target_audience": "string",
    "constraints_text": "string",
    "forbidden_text": "string",
    "quality_standard": "string",
    "review_policy": "string",
    "delivery_requirement": "string"
  }
}

## 5. pipeline_start Payload

{
  "project_id": "uuid",
  "policy_id": "uuid",
  "execution_mode": "standard",
  "review_strictness": "normal",
  "human_approval_required": true
}

## 6. return_request_submit Payload

{
  "review_id": "uuid",
  "deliverable_id": "uuid",
  "from_role": "leader",
  "to_role": "worker",
  "reason": "string",
  "correction_target": "string",
  "correction_instruction": "string",
  "due_at": "timestamp"
}

## 7. human_approval_submit Payload

{
  "approval_id": "uuid",
  "deliverable_id": "uuid",
  "approval_status": "approved",
  "approval_comment": "string"
}

## 8. Conflict Priority

1. cancel
2. human_revision_request_submit
3. human_approval_submit
4. return_request_submit
5. review_comment_submit
6. pipeline_start
7. policy_submit
8. policy_save_draft

## 9. Retry Policy

retryable:
- network_unavailable
- server_timeout
- aiworker_unavailable
- stale_snapshot
- unknown_error

not retryable:
- validation_error
- permission_denied
- auth_expired
- conflict_detected
- delivery_locked
- approval_already_finalized

## 10. Canonical Queue Rule

CommonOS displays queue state.
AICompanyManager defines queue_type and payload meaning.
