# ============================================================
# AIWORKER BUSINESS REQUEST AND RESULT EVENT JSON CONTRACT EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON contract across the AiworkerOS <-> BusinessOS boundary.

business_to_aiworker_request_event_types:
- AIWORKER_DISPATCH_REQUEST_CREATED
- AIWORKER_WORK_ORDER_UPDATED
- AIWORKER_APPROVAL_CONTEXT_UPDATED
- AIWORKER_CONTRACT_CONTEXT_ATTACHED
- AIWORKER_CANCEL_REQUESTED

common_request_event_contract:
```json
{
  "event_type": "AIWORKER_DISPATCH_REQUEST_CREATED",
  "event_version": "1.0",
  "business_request_id": "uuid",
  "tenant_company_id": "uuid",
  "tenant_user_id": "uuid|null",
  "requested_domain": "text",
  "requested_role": "text",
  "requested_lane": "text",
  "requested_app_scope": "text",
  "priority_band": "text",
  "approval_requirement_code": "text|null",
  "billing_context_id": "uuid|null",
  "erp_context_id": "uuid|null",
  "request_created_at": "timestamptz",
  "request_payload": {
    "intent_code": "text",
    "reason_code": "text|null",
    "requested_transition_code": "text|null",
    "notes": "text|null"
  }
}
```

aiworker_to_business_result_event_types:
- AIWORKER_ASSIGNMENT_DECIDED
- AIWORKER_ASSIGNMENT_REJECTED
- AIWORKER_EXECUTION_STATE_CHANGED
- AIWORKER_RESULT_SUMMARY_READY
- AIWORKER_ESCALATION_REQUIRED
- AIWORKER_REPAIR_STATE_CHANGED
- AIWORKER_REBUILD_STATE_CHANGED

common_result_event_contract:
```json
{
  "event_type": "AIWORKER_ASSIGNMENT_DECIDED",
  "event_version": "1.0",
  "business_request_id": "uuid",
  "worker_id": "uuid",
  "worker_assignment_id": "uuid|null",
  "aiworker_status_code": "text",
  "result_summary_code": "text",
  "escalation_code": "text|null",
  "repair_state_code": "text|null",
  "rebuild_state_code": "text|null",
  "summary_payload": {
    "state_family_code": "text",
    "old_state_code": "text|null",
    "new_state_code": "text|null",
    "decision_reason_code": "text|null",
    "human_review_required_flag": "boolean"
  },
  "emitted_at": "timestamptz"
}
```

hard_rules:
- business-facing payloads must not contain raw worker-internal secret columns
- business-facing payloads must not contain direct cx22073jw view objects
- payload versions are explicit and additive
