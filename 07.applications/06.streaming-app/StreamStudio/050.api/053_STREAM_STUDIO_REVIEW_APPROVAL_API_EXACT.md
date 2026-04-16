# ============================================================
# STREAM STUDIO REVIEW APPROVAL API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact review and approval API payloads.

# ============================================================
# 1. CREATE REVIEW COMMENT
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/reviews/comments

request_body:
  creator_project_id: string
  review_ref: string
  comment_type: general_or_timeline_or_metadata_or_subtitle
  anchor_mode: whole_asset_or_time_range_or_metadata_field_or_subtitle_track
  anchor_start_ms: integer_optional
  anchor_end_ms: integer_optional
  anchor_field_key: string_optional
  message_body: string
  attachment_ref: string_optional

response_body:
  ok: true
  data:
    review_comment:
      creator_review_comment_id: string
      review_ref: string
      comment_type: string
      anchor_mode: string
      anchor_start_ms: integer_or_null
      anchor_end_ms: integer_or_null
      message_body: string
      created_by: string
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- creator_project_id_required
- review_ref_required
- comment_type_required
- anchor_mode_required
- message_body_required

# ============================================================
# 2. CREATE REVISION REQUEST
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/reviews/revision-requests

request_body:
  creator_project_id: string
  revision_ref: string
  requester_ref: string
  assignee_ref: string
  revision_summary: string
  due_at: iso8601_optional
  linked_comment_ref: string_optional
  blocking_flag: boolean

response_body:
  ok: true
  data:
    revision_request:
      creator_revision_request_id: string
      revision_ref: string
      request_status: open
      requester_ref: string
      assignee_ref: string
      revision_summary: string
      due_at: iso8601_or_null
      blocking_flag: boolean
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 3. RESPOND REVISION REQUEST
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/reviews/revision-requests/{creator_revision_request_id}/respond

request_body:
  action: accept_or_reject_or_resubmit_or_verify
  response_note: string_optional

response_body:
  ok: true
  data:
    revision_request:
      creator_revision_request_id: string
      request_status: string
      resolved_at: iso8601_or_null
      updated_at: iso8601
  meta:
    request_id: string

business_rule_errors:
- invalid_revision_state_transition

# ============================================================
# 4. CREATE APPROVAL REQUEST
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/approvals/requests

request_body:
  creator_project_id: string
  approval_ref: string
  approval_type: publish_or_listing_or_split_or_membership_program
  requested_by: string
  approver_refs: string_array
  due_at: iso8601_optional
  approval_note: string_optional

response_body:
  ok: true
  data:
    approval_request:
      creator_approval_request_id: string
      approval_ref: string
      approval_type: string
      approval_status: requested
      requested_by: string
      requested_at: iso8601
      due_at: iso8601_or_null
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- approval_ref_required
- approval_type_required
- approver_refs_min_1

# ============================================================
# 5. DECIDE APPROVAL REQUEST
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/approvals/requests/{creator_approval_request_id}/decide

request_body:
  decision_code: approve_or_reject
  decision_note: string_optional
  expected_status: requested_or_in_review

response_body:
  ok: true
  data:
    approval_decision:
      creator_approval_decision_id: string
      creator_approval_request_id: string
      approver_ref: string
      decision_code: string
      decision_note: string_or_null
      decided_at: iso8601
    approval_request:
      creator_approval_request_id: string
      approval_status: string
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 6. LIST REVIEW TIMELINE
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/reviews/timeline

query_params:
  creator_project_id: string_required
  filter_mode: needs_my_review_or_needs_my_response_or_overdue_or_blocked_optional
  cursor: string_optional
  limit: integer_optional

response_body:
  ok: true
  data:
    items:
      - item_type: review_comment_or_revision_request_or_approval_request
        item_ref: string
        creator_project_id: string
        summary: string
        status: string
        due_at: iso8601_or_null
        updated_at: iso8601
    page:
      next_cursor: string_or_null
      limit: integer
  meta:
    request_id: string
