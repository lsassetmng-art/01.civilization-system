# ============================================================
# STREAM STUDIO ERROR VALIDATION IDEMPOTENCY POLICY
# ============================================================

status: draft
layer: api-policy
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact response envelope, error structure,
validation codes, and idempotency rules.

response_envelope_success:
  ok: true
  data: object
  meta:
    request_id: string
    server_time: iso8601_optional

response_envelope_failure:
  ok: false
  error:
    type: validation_or_business_rule_or_permission_or_conflict_or_not_found_or_system
    code: string
    message: string
    field_errors:
      - field: string
        code: string
        message: string
    retryable: boolean
  meta:
    request_id: string
    server_time: iso8601_optional

http_status_mapping:
- 200 success_read
- 201 success_create
- 400 validation_error
- 401 unauthenticated
- 403 permission_denied
- 404 not_found
- 409 conflict_or_invalid_state_transition
- 422 business_rule_error
- 500 system_error
- 503 temporary_unavailable

validation_code_examples:
- required
- invalid_format
- max_length_exceeded
- min_value_not_met
- invalid_enum_value
- invalid_datetime_range
- invalid_currency_code
- invalid_percentage_total
- invalid_membership_binding

business_rule_code_examples:
- publish_not_ready
- publish_approval_required
- publish_rights_blocked
- listing_not_ready
- listing_split_required
- listing_membership_conflict
- membership_program_not_ready
- membership_tier_conflict
- split_overlapping_active_version
- upload_not_retryable

permission_code_examples:
- project_view_denied
- project_edit_denied
- publish_denied
- listing_manage_denied
- membership_manage_denied
- split_manage_denied
- admin_override_denied

idempotency_policy:
  applies_to:
    - create_project
    - create_upload_session
    - create_video_draft
    - create_revision_request
    - create_approval_request
    - create_publish_request
    - list_now
    - activate_membership_program
    - activate_split_version
  rule:
    - same_idempotency_key_and_same_request_body_returns_same_result
    - same_idempotency_key_and_different_request_body_returns_conflict
    - idempotency_window_minimum_24_hours

optimistic_lock_policy:
- metadata_update_requires_expected_version
- listing_update_requires_expected_version
- membership_program_update_requires_expected_version

timestamp_policy:
- all timestamps use iso8601
- server writes canonical updated_at
- client time must not be treated as canonical truth

number_policy:
- monetary values use decimal-compatible number string at implementation layer if precision requires
- percentage values preserve fractional precision policy separately
