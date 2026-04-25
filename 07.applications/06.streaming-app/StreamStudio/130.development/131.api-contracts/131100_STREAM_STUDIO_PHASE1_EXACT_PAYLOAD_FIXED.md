# ============================================================
# STREAM STUDIO PHASE1 EXACT PAYLOAD FIXED
# ============================================================

status: implementation-freeze
layer: exact-payload
system: StreamingOS
app: StreamStudio
schema: streaming
owner: Boss
prepared_by: Zero
source_basis:
- /mnt/data/00_STREAM_STUDIO_INTEGRATED.md

## 1. Scope

This file fixes the request/response surface used by the first actual
implementation pass of StreamStudio.

Included families:
- project
- upload
- video_draft
- publish_setting
- publish_request

Deferred from this bundle:
- marketplace listing
- membership manager
- split and settlement
- full review timeline implementation

## 2. Envelope Rules

Success envelope

```json
{
  "ok": true,
  "data": {},
  "meta": {
    "request_id": "string"
  }
}
```

Failure envelope

```json
{
  "ok": false,
  "error": {
    "code": "string",
    "message": "string",
    "details": {}
  },
  "meta": {
    "request_id": "string"
  }
}
```

Headers
- authorization
- x-request-id
- x-idempotency-key for mutation endpoints when retry safety matters

## 3. Phase1 Route Catalog

### POST /api/stream-studio/projects
- name: create_project
- request fields: workspace_id, project_title, project_summary?, owner_creator_ref, default_language, initial_visibility_hint?
- response fields: project.creator_project_id, project.project_code, project.project_title, project.project_status, project.owner_creator_ref, project.default_language, project.created_at, project.updated_at

### GET /api/stream-studio/projects
- name: list_projects
- request fields: workspace_id, status?, keyword?, cursor?, limit?
- response fields: items[], page.next_cursor, page.limit

### GET /api/stream-studio/projects/{creator_project_id}
- name: get_project_detail
- request fields: creator_project_id(path)
- response fields: project, members_summary, readiness_summary

### PATCH /api/stream-studio/projects/{creator_project_id}
- name: update_project
- request fields: project_title?, project_summary?, default_language?, expected_version
- response fields: project.creator_project_id, project.project_title, project.project_summary, project.default_language, project.updated_at, project.version

### POST /api/stream-studio/uploads/sessions
- name: create_upload_session
- request fields: creator_project_id, source_file_name, file_size_bytes, mime_type, target_asset_type, checksum_sha256?
- response fields: upload_session.creator_upload_job_id, upload_session.resumable_session_ref, upload_session.ingest_status, upload_session.upload_url, upload_session.expires_at, upload_session.chunk_size_bytes

### POST /api/stream-studio/uploads/{creator_upload_job_id}/complete
- name: complete_upload
- request fields: final_chunk_received, checksum_sha256?
- response fields: upload_job.creator_upload_job_id, upload_job.ingest_status, upload_job.updated_at

### GET /api/stream-studio/uploads/{creator_upload_job_id}
- name: get_upload_status
- request fields: creator_upload_job_id(path)
- response fields: upload_job.creator_upload_job_id, upload_job.source_file_name, upload_job.file_size_bytes, upload_job.ingest_status, upload_job.progress_percent, upload_job.failure_code, upload_job.failure_summary, upload_job.resumable_session_ref, upload_job.created_at, upload_job.updated_at

### POST /api/stream-studio/uploads/{creator_upload_job_id}/retry
- name: retry_upload
- request fields: retry_mode
- response fields: upload_job.creator_upload_job_id, upload_job.ingest_status, upload_job.retry_count, upload_job.updated_at

### POST /api/stream-studio/video-drafts
- name: create_video_draft
- request fields: creator_project_id, asset_ref, title?, description?, default_language, tag_summary_json?
- response fields: video_draft.creator_video_draft_id, video_draft.creator_project_id, video_draft.asset_ref, video_draft.draft_status, video_draft.title, video_draft.description, video_draft.default_language, video_draft.tag_summary_json, video_draft.draft_version, video_draft.created_at, video_draft.updated_at

### PATCH /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata
- name: update_metadata
- request fields: title?, description?, default_language?, tag_summary_json?, expected_draft_version
- response fields: video_draft.creator_video_draft_id, video_draft.title, video_draft.description, video_draft.default_language, video_draft.tag_summary_json, video_draft.draft_version, video_draft.updated_at

### PUT /api/stream-studio/publish-settings/{publish_ref}
- name: upsert_publish_setting
- request fields: release_type, visibility_scope, scheduled_publish_at?, age_rating_code?, territory_rules?, membership_gate_policy?, expected_version
- response fields: publish_setting.publish_ref, publish_setting.release_type, publish_setting.visibility_scope, publish_setting.scheduled_publish_at, publish_setting.age_rating_code, publish_setting.version, publish_setting.updated_at

### POST /api/stream-studio/publish-settings/{publish_ref}/validate
- name: validate_publish_readiness
- request fields: validation_scope?
- response fields: readiness.is_publishable, readiness.blockers[], readiness.warnings[]

### POST /api/stream-studio/publish-requests
- name: create_publish_request
- request fields: creator_project_id, publish_ref, request_note?, requested_by
- response fields: publish_request.creator_publish_request_id, publish_request.creator_project_id, publish_request.publish_ref, publish_request.request_status, publish_request.requested_by, publish_request.requested_at

### POST /api/stream-studio/publish-requests/schedule
- name: schedule_publish
- request fields: creator_publish_request_id, scheduled_publish_at, scheduled_by
- response fields: schedule.creator_publish_request_id, schedule.scheduled_publish_at, schedule.scheduled_by, schedule.registered_at

### GET /api/stream-studio/publish-history
- name: list_publish_history
- request fields: creator_project_id, cursor?, limit?
- response fields: items[], page.next_cursor, page.limit


## 4. Critical Locked Examples

### Create Project

```json
{
  "workspace_id": "uuid",
  "project_title": "Spring Live Archive",
  "project_summary": "Phase1 initial project",
  "owner_creator_ref": "creator_001",
  "default_language": "en",
  "initial_visibility_hint": "private"
}
```

### Create Upload Session

```json
{
  "creator_project_id": "uuid",
  "source_file_name": "episode01.mp4",
  "file_size_bytes": 104857600,
  "mime_type": "video/mp4",
  "target_asset_type": "video_asset",
  "checksum_sha256": "optional"
}
```

### Create Video Draft

```json
{
  "creator_project_id": "uuid",
  "asset_ref": "asset_001",
  "title": "Episode 1",
  "description": "draft body",
  "default_language": "en",
  "tag_summary_json": {
    "tags": ["music", "live"]
  }
}
```

### Upsert Publish Setting

```json
{
  "release_type": "scheduled",
  "visibility_scope": "public",
  "scheduled_publish_at": "2026-04-22T10:00:00+09:00",
  "age_rating_code": "all",
  "territory_rules": [],
  "membership_gate_policy": null,
  "expected_version": 1
}
```

### Create Publish Request

```json
{
  "creator_project_id": "uuid",
  "publish_ref": "publish_001",
  "request_note": "ready for go",
  "requested_by": "creator_001"
}
```

## 5. Fixed Statement

The implementation must preserve:
project -> upload -> draft -> publish_setting -> publish_request

No Phase1 route may mutate marketplace, membership commerce,
or settlement state in this bundle.

