# ============================================================
# K4 MODERATION EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: moderation
prepared_by: Zero
owner: Boss

endpoints:
- create_comment_record
- create_report_record
- update_comment_moderation_state
- create_appeal_record
- decide_restoration_record

canonical_objects:
- comment_record
- report_record
- comment_moderation_state
- appeal_record
- moderation_restoration_record

comment_create_request_shape:
{
  target_type,
  target_id,
  comment_body,
  language_code?,
  idempotency_key
}

report_create_request_shape:
{
  target_type,
  target_id,
  report_reason_code,
  report_detail?,
  evidence_refs?: [],
  idempotency_key
}

comment_moderation_state_update_request_shape:
{
  comment_id,
  moderation_action,
  reason_code?,
  note?,
  idempotency_key
}

appeal_create_request_shape:
{
  target_type,
  target_id,
  appeal_reason_code,
  appeal_detail?,
  evidence_refs?: [],
  idempotency_key
}

restoration_decision_request_shape:
{
  restoration_record_id,
  decision_action,
  reason_code?,
  note?,
  idempotency_key
}

mutation_response_shape:
{
  success: true,
  data: {
    canonical_id,
    canonical_type,
    resulting_state?,
    updated_at_or_created_at?
  }
}

field_rules:
- report_reason_code is required
- moderation_action is required
- appeal_reason_code is required
- decision_action is required
- idempotency_key is required for all moderation mutations in scope
- comment author must not directly overwrite moderation state
- restoration decision remains reviewer/moderation-side action only

not_returned_publicly:
- internal reviewer notes
- raw moderation risk tags
- raw enforcement-routing markers
- internal platform support annotations
