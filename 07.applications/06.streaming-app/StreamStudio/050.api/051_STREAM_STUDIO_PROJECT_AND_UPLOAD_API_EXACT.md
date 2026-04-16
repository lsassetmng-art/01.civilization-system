# ============================================================
# STREAM STUDIO PROJECT AND UPLOAD API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact project and upload API payloads.

envelope_rules:
  request_common_headers:
    - authorization
    - x-request-id
    - x-idempotency-key_optional_for_mutation
  response_envelope:
    success:
      - ok
      - data
      - meta
    failure:
      - ok
      - error
      - meta

# ============================================================
# 1. CREATE PROJECT
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/projects

request_body:
  workspace_id: string
  project_title: string
  project_summary: string_optional
  owner_creator_ref: string
  default_language: string
  initial_visibility_hint: string_optional

response_body:
  ok: true
  data:
    project:
      creator_project_id: string
      project_code: string
      project_title: string
      project_status: draft
      owner_creator_ref: string
      default_language: string
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- workspace_id_required
- project_title_required
- project_title_max_length_200
- default_language_required

# ============================================================
# 2. LIST PROJECTS
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/projects

query_params:
  workspace_id: string_required
  status: string_optional
  keyword: string_optional
  cursor: string_optional
  limit: integer_optional

response_body:
  ok: true
  data:
    items:
      - creator_project_id: string
        project_code: string
        project_title: string
        project_status: string
        owner_creator_ref: string
        updated_at: iso8601
    page:
      next_cursor: string_or_null
      limit: integer
  meta:
    request_id: string

# ============================================================
# 3. GET PROJECT DETAIL
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/projects/{creator_project_id}

path_params:
- creator_project_id

response_body:
  ok: true
  data:
    project:
      creator_project_id: string
      project_code: string
      project_title: string
      project_summary: string_or_null
      project_status: string
      owner_creator_ref: string
      default_language: string
      created_at: iso8601
      updated_at: iso8601
    members_summary:
      total_count: integer
      active_count: integer
    readiness_summary:
      has_primary_asset: boolean
      has_publish_setting: boolean
      has_blocker: boolean
  meta:
    request_id: string

# ============================================================
# 4. UPDATE PROJECT SUMMARY
# ============================================================

endpoint:
  method: PATCH
  path: /api/stream-studio/projects/{creator_project_id}

request_body:
  project_title: string_optional
  project_summary: string_optional
  default_language: string_optional
  expected_version: integer

response_body:
  ok: true
  data:
    project:
      creator_project_id: string
      project_title: string
      project_summary: string_or_null
      default_language: string
      updated_at: iso8601
      version: integer
  meta:
    request_id: string

validation_rules:
- expected_version_required
- at_least_one_mutable_field_required

# ============================================================
# 5. ASSIGN MEMBER
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/projects/{creator_project_id}/members

request_body:
  member_ref: string
  role_code: string
  permission_profile_ref: string_optional
  assignment_scope_summary:
    workspace_scope: boolean_optional
    project_scope: boolean_optional
    asset_scope_refs: string_array_optional
    publish_scope: boolean_optional
    listing_scope: boolean_optional
    membership_scope: boolean_optional
    split_scope: boolean_optional
  due_at: iso8601_optional

response_body:
  ok: true
  data:
    member_assignment:
      creator_project_member_id: string
      creator_project_id: string
      member_ref: string
      role_code: string
      due_at: iso8601_or_null
      joined_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- member_ref_required
- role_code_required

# ============================================================
# 6. CREATE UPLOAD SESSION
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/uploads/sessions

request_body:
  creator_project_id: string
  source_file_name: string
  file_size_bytes: integer
  mime_type: string
  target_asset_type: string
  checksum_sha256: string_optional

response_body:
  ok: true
  data:
    upload_session:
      creator_upload_job_id: string
      resumable_session_ref: string
      ingest_status: queued
      upload_url: string
      expires_at: iso8601
      chunk_size_bytes: integer
  meta:
    request_id: string

validation_rules:
- creator_project_id_required
- source_file_name_required
- file_size_bytes_positive
- mime_type_required
- target_asset_type_required

# ============================================================
# 7. COMPLETE UPLOAD
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/uploads/{creator_upload_job_id}/complete

request_body:
  final_chunk_received: boolean
  checksum_sha256: string_optional

response_body:
  ok: true
  data:
    upload_job:
      creator_upload_job_id: string
      ingest_status: processing
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 8. GET UPLOAD STATUS
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/uploads/{creator_upload_job_id}

response_body:
  ok: true
  data:
    upload_job:
      creator_upload_job_id: string
      source_file_name: string
      file_size_bytes: integer
      ingest_status: string
      progress_percent: integer
      failure_code: string_or_null
      failure_summary: string_or_null
      resumable_session_ref: string
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 9. RETRY UPLOAD
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/uploads/{creator_upload_job_id}/retry

request_body:
  retry_mode: restart_or_resume

response_body:
  ok: true
  data:
    upload_job:
      creator_upload_job_id: string
      ingest_status: queued
      retry_count: integer
      updated_at: iso8601
  meta:
    request_id: string

business_rule_errors:
- upload_not_retryable
- upload_permission_denied
- upload_session_terminal_failed
