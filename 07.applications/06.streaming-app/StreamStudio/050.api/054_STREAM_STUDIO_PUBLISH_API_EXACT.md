# ============================================================
# STREAM STUDIO PUBLISH API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact publish API payloads.

# ============================================================
# 1. UPSERT PUBLISH SETTING
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/publish-settings/{publish_ref}

request_body:
  creator_project_id: string
  visibility_code: private_or_limited_or_public_or_scheduled_public
  scheduled_publish_at: iso8601_optional
  publish_destinations:
    streaming_internal_publication: boolean
    youtube_extension: boolean_optional
  connector_account_ref: string_optional
  comment_policy_code: string_optional

response_body:
  ok: true
  data:
    publish_setting:
      creator_publish_setting_id: string
      publish_ref: string
      visibility_code: string
      scheduled_publish_at: iso8601_or_null
      publish_destination_summary: object
      rights_check_status: pending_or_passed_or_failed
      readiness_status: pending_or_ready_or_blocked
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- creator_project_id_required
- visibility_code_required
- scheduled_publish_at_required_when_scheduled_public
- connector_account_ref_required_when_youtube_extension_true

# ============================================================
# 2. VALIDATE PUBLISH READINESS
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/publish-settings/{publish_ref}/validate

request_body:
  creator_project_id: string

response_body:
  ok: true
  data:
    readiness:
      publish_ref: string
      overall_status: ready_or_blocked
      checks:
        metadata_complete: boolean
        thumbnail_present: boolean
        subtitle_policy_satisfied: boolean
        approval_satisfied: boolean
        rights_clear: boolean
        split_policy_satisfied: boolean
        connector_binding_valid: boolean
      blocking_codes: string_array
  meta:
    request_id: string

# ============================================================
# 3. CREATE PUBLISH REQUEST
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/publish-requests

request_body:
  publish_ref: string
  requested_by: string
  request_channel: manual_or_scheduler
  execute_after: iso8601_optional

response_body:
  ok: true
  data:
    publish_request:
      creator_publish_request_id: string
      publish_ref: string
      request_status: requested
      requested_by: string
      request_channel: string
      execute_after: iso8601_or_null
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

business_rule_errors:
- publish_not_ready
- publish_approval_required
- publish_rights_blocked

# ============================================================
# 4. SCHEDULE PUBLISH
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/publish-requests/schedule

request_body:
  publish_ref: string
  scheduled_publish_at: iso8601
  requested_by: string

response_body:
  ok: true
  data:
    publish_request:
      creator_publish_request_id: string
      publish_ref: string
      request_status: scheduled
      execute_after: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- scheduled_publish_at_future_required

# ============================================================
# 5. LIST PUBLISH HISTORY
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/publish-history

query_params:
  creator_project_id: string_required
  publish_ref: string_optional
  cursor: string_optional
  limit: integer_optional

response_body:
  ok: true
  data:
    items:
      - creator_publish_request_id: string
        publish_ref: string
        request_status: string
        canonical_publish_status: string_or_null
        external_push_status: string_or_null
        created_at: iso8601
        updated_at: iso8601
    page:
      next_cursor: string_or_null
      limit: integer
  meta:
    request_id: string

# ============================================================
# 6. RETRY EXTERNAL PUSH
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/external-push/{creator_external_push_job_id}/retry

request_body:
  retry_reason_note: string_optional

response_body:
  ok: true
  data:
    external_push_job:
      creator_external_push_job_id: string
      push_status: pending
      retry_count: integer
      next_retry_at: iso8601_or_null
      updated_at: iso8601
  meta:
    request_id: string
