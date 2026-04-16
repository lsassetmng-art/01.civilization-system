# ============================================================
# NAMECARDMANAGER SHARED BUSINESSOS PUBLICATION CONNECTION SPEC
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes exact connection boundary between NameCardManager and shared BusinessOS publication capability.

principle:
- NameCardManager does not directly transmit to ERP
- NameCardManager connects only to shared BusinessOS publication capability

preflight_request_direction:
{
  "source_application": "NameCardManager",
  "requester_user_id": "uuid",
  "company_id": "uuid",
  "publication_policy_code": "string",
  "namecard_ids": ["uuid"]
}

preflight_response_direction:
{
  "preflight_passed": true,
  "approval_required": true,
  "blocking_validation_codes": [],
  "warning_items": [],
  "publication_preview_payload": {}
}

publication_request_direction:
{
  "source_application": "NameCardManager",
  "requester_user_id": "uuid",
  "company_id": "uuid",
  "publication_policy_code": "string",
  "namecard_ids": ["uuid"],
  "request_note": "optional string"
}

publication_response_direction:
{
  "publication_request_id": "uuid",
  "request_status": "pending_approval",
  "approval_required": true
}

result_poll_response_direction:
{
  "publication_request_id": "uuid",
  "request_status": "pending_approval | accepted_for_publication | rejected | failed | published",
  "publication_state": "not_published | pending_approval | approved_not_published | published | publish_failed | rejected | returned_for_fix",
  "approval_event_items": [],
  "result_code": "optional string"
}

mapping_rules:
- pending_approval maps to namecard pending_approval
- accepted_for_publication maps to approved_not_published until publication success
- published maps to published
- rejected maps to rejected
- failed maps to publish_failed unless approval failure semantics apply

duplicate_submission_rules:
- duplicate request on the same source request payload must be blocked by idempotency control
- repeated UI taps must not create duplicate publication requests
