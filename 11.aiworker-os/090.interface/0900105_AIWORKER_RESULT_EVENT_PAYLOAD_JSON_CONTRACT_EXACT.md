# ============================================================
# AIWORKER RESULT EVENT PAYLOAD JSON CONTRACT EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON payload contract for AiworkerOS result events and summaries.

result_event_payload_principle:
- result payload is business-facing and replay-safe
- result payload returns correlation, status, and summary
- result payload is not a raw mirror of canonical tables

result_event_payload_contract:
```json
{
  "payload_version": "1.0",
  "event_type": "text",
  "event_id": "uuid",
  "business_request_id": "uuid|null",
  "worker_id": "uuid|null",
  "related_entity_id": "uuid|null",
  "aiworker_status_code": "text",
  "result_code": "text",
  "result_summary_code": "text",
  "state_family_code": "text|null",
  "old_state_code": "text|null",
  "new_state_code": "text|null",
  "decision_context": {
    "approval_used_flag": "boolean",
    "audit_written_flag": "boolean",
    "escalation_required_flag": "boolean"
  },
  "summary_payload": {
    "headline": "text",
    "detail_code": "text|null",
    "reason_code": "text|null",
    "human_review_required_flag": "boolean"
  },
  "emitted_at": "timestamptz"
}
```

result_summary_payload_bands:
- MINIMAL
- STANDARD
- REVIEW
- RESTRICTED_NOTICE

band_meaning:
- MINIMAL:
  only summary and correlation

- STANDARD:
  summary plus state-family result

- REVIEW:
  includes human review indicators

- RESTRICTED_NOTICE:
  signals restriction without exposing restricted raw detail

hard_rules:
- result payload must not expose raw payload_ref
- result payload must not expose direct unrestricted restricted-policy text
- result payload must not expose raw command/draft/staging/intake internals
