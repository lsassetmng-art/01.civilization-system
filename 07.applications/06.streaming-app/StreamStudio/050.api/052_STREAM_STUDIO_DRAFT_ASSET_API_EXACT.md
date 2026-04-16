# ============================================================
# STREAM STUDIO DRAFT ASSET API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact draft asset API payloads.

# ============================================================
# 1. CREATE VIDEO DRAFT
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/video-drafts

request_body:
  creator_project_id: string
  asset_ref: string
  title: string_optional
  description: string_optional
  default_language: string
  tag_summary_json: object_optional

response_body:
  ok: true
  data:
    video_draft:
      creator_video_draft_id: string
      creator_project_id: string
      asset_ref: string
      draft_status: draft
      title: string_or_null
      description: string_or_null
      default_language: string
      tag_summary_json: object_or_null
      draft_version: integer
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- creator_project_id_required
- asset_ref_required
- default_language_required

# ============================================================
# 2. UPDATE METADATA
# ============================================================

endpoint:
  method: PATCH
  path: /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata

request_body:
  title: string_optional
  description: string_optional
  tags: string_array_optional
  default_language: string_optional
  category_code: string_optional
  expected_version: integer

response_body:
  ok: true
  data:
    video_draft:
      creator_video_draft_id: string
      title: string_or_null
      description: string_or_null
      default_language: string
      category_code: string_or_null
      draft_version: integer
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- expected_version_required
- title_max_length_200
- description_max_length_5000
- tags_max_count_100

# ============================================================
# 3. ASSIGN THUMBNAIL
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/video-drafts/{creator_video_draft_id}/thumbnail

request_body:
  thumbnail_asset_ref: string
  crop_mode: string_optional

response_body:
  ok: true
  data:
    thumbnail_assignment:
      creator_video_draft_id: string
      thumbnail_asset_ref: string
      crop_mode: string_or_null
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- thumbnail_asset_ref_required

# ============================================================
# 4. ADD SUBTITLE TRACK
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/video-drafts/{creator_video_draft_id}/subtitle-tracks

request_body:
  language_code: string
  source_type: uploaded_or_generated
  file_asset_ref: string_optional
  is_default_track: boolean_optional

response_body:
  ok: true
  data:
    subtitle_track:
      creator_subtitle_track_id: string
      creator_video_draft_id: string
      language_code: string
      source_type: string
      subtitle_status: draft
      file_asset_ref: string_or_null
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- language_code_required
- source_type_required
- file_asset_ref_required_when_uploaded

# ============================================================
# 5. UPSERT TRIM OR CUT MARKER
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/video-drafts/{creator_video_draft_id}/edit-markers/{client_marker_key}

request_body:
  marker_type: trim_or_cut
  start_ms: integer
  end_ms: integer
  marker_summary: string_optional

response_body:
  ok: true
  data:
    edit_marker:
      creator_edit_marker_id: string
      creator_video_draft_id: string
      marker_type: string
      start_ms: integer
      end_ms: integer
      marker_summary: string_or_null
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- marker_type_required
- start_ms_non_negative
- end_ms_greater_than_start_ms

# ============================================================
# 6. LIST DRAFT VERSIONS
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/video-drafts/{creator_video_draft_id}/versions

response_body:
  ok: true
  data:
    items:
      - draft_version: integer
        changed_by: string
        change_summary: string
        created_at: iso8601
    page:
      next_cursor: string_or_null
      limit: integer
  meta:
    request_id: string

business_rule_errors:
- draft_not_found
- draft_locked_by_publish_flow
- draft_locked_by_approval_flow
