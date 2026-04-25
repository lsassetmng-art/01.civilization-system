# ============================================================
# STREAM STUDIO PHASE 1 BACKEND ENDPOINT IMPLEMENTATION MAP
# ============================================================

status: starter-map
layer: implementation-backend-map
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Maps Phase 1 backend endpoints to services, validators,
audit events, and runtime dependencies.

# ============================================================
# 1. ENDPOINT IMPLEMENTATION TABLE
# ============================================================

endpoint_map:

  create_project:
    endpoint: POST /api/stream-studio/projects
    handler: create_project_handler
    service: project_create_service
    validator: create_project_validator
    writes:
      - creator_project
      - creator_audit_event
    audit_events:
      - PROJECT_CREATED
    runtime_jobs: []
    notes:
      - project_code generation required
      - default project_status = draft

  list_projects:
    endpoint: GET /api/stream-studio/projects
    handler: list_projects_handler
    service: project_list_service
    validator: list_projects_query_validator
    writes: []
    audit_events: []
    runtime_jobs: []
    notes:
      - workspace_scope filter required

  get_project_detail:
    endpoint: GET /api/stream-studio/projects/{creator_project_id}
    handler: get_project_detail_handler
    service: project_detail_service
    validator: project_detail_path_validator
    writes: []
    audit_events: []
    runtime_jobs: []
    notes:
      - readiness summary may be derived

  update_project:
    endpoint: PATCH /api/stream-studio/projects/{creator_project_id}
    handler: update_project_handler
    service: project_update_service
    validator: update_project_validator
    writes:
      - creator_project
      - creator_audit_event
    audit_events:
      - PROJECT_UPDATED
    runtime_jobs: []
    notes:
      - optimistic lock required

  create_upload_session:
    endpoint: POST /api/stream-studio/uploads/sessions
    handler: create_upload_session_handler
    service: upload_session_create_service
    validator: create_upload_session_validator
    writes:
      - creator_upload_job
      - creator_audit_event
    audit_events:
      - UPLOAD_SESSION_CREATED
    runtime_jobs: []
    notes:
      - resumable_session_ref required

  complete_upload:
    endpoint: POST /api/stream-studio/uploads/{creator_upload_job_id}/complete
    handler: complete_upload_handler
    service: upload_complete_service
    validator: upload_complete_validator
    writes:
      - creator_upload_job
      - creator_audit_event
      - creator_runtime_job
    audit_events:
      - UPLOAD_COMPLETED
    runtime_jobs:
      - UPLOAD_INGEST_FINALIZER
    notes:
      - state transition uploading -> processing

  get_upload_status:
    endpoint: GET /api/stream-studio/uploads/{creator_upload_job_id}
    handler: get_upload_status_handler
    service: upload_status_service
    validator: upload_status_path_validator
    writes: []
    audit_events: []
    runtime_jobs: []
    notes:
      - progress_percent and failure_code visibility

  retry_upload:
    endpoint: POST /api/stream-studio/uploads/{creator_upload_job_id}/retry
    handler: retry_upload_handler
    service: upload_retry_service
    validator: retry_upload_validator
    writes:
      - creator_upload_job
      - creator_audit_event
    audit_events:
      - UPLOAD_RETRIED
    runtime_jobs: []
    notes:
      - retry_mode restart_or_resume enforced

  create_video_draft:
    endpoint: POST /api/stream-studio/video-drafts
    handler: create_video_draft_handler
    service: video_draft_create_service
    validator: create_video_draft_validator
    writes:
      - creator_video_draft
      - creator_audit_event
    audit_events:
      - VIDEO_DRAFT_CREATED
    runtime_jobs: []
    notes:
      - asset_ref must already exist

  update_metadata:
    endpoint: PATCH /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata
    handler: update_metadata_handler
    service: video_draft_metadata_update_service
    validator: update_metadata_validator
    writes:
      - creator_video_draft
      - creator_audit_event
    audit_events:
      - DRAFT_METADATA_UPDATED
    runtime_jobs: []
    notes:
      - optimistic lock required

  assign_thumbnail:
    endpoint: PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/thumbnail
    handler: assign_thumbnail_handler
    service: thumbnail_assignment_service
    validator: assign_thumbnail_validator
    writes:
      - creator_video_draft
      - creator_audit_event
    audit_events:
      - THUMBNAIL_ASSIGNED
    runtime_jobs:
      - THUMBNAIL_DERIVATIVE_JOB
    notes:
      - thumbnail rights check placeholder allowed

  add_subtitle_track:
    endpoint: POST /api/stream-studio/video-drafts/{creator_video_draft_id}/subtitle-tracks
    handler: add_subtitle_track_handler
    service: subtitle_track_create_service
    validator: add_subtitle_track_validator
    writes:
      - creator_subtitle_track
      - creator_audit_event
      - creator_runtime_job
    audit_events:
      - SUBTITLE_TRACK_ADDED
    runtime_jobs:
      - SUBTITLE_PACKAGING_JOB
    notes:
      - source_type uploaded_or_generated

  upsert_edit_marker:
    endpoint: PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/edit-markers/{client_marker_key}
    handler: upsert_edit_marker_handler
    service: edit_marker_upsert_service
    validator: upsert_edit_marker_validator
    writes:
      - creator_edit_marker
      - creator_audit_event
    audit_events:
      - EDIT_MARKER_UPSERTED
    runtime_jobs: []
    notes:
      - idempotent by client_marker_key

  upsert_publish_setting:
    endpoint: PUT /api/stream-studio/publish-settings/{publish_ref}
    handler: upsert_publish_setting_handler
    service: publish_setting_upsert_service
    validator: upsert_publish_setting_validator
    writes:
      - creator_publish_setting
      - creator_audit_event
    audit_events:
      - PUBLISH_SETTING_SAVED
    runtime_jobs: []
    notes:
      - phase 1 only internal publication required

  validate_publish_readiness:
    endpoint: POST /api/stream-studio/publish-settings/{publish_ref}/validate
    handler: validate_publish_readiness_handler
    service: publish_readiness_service
    validator: validate_publish_readiness_validator
    writes:
      - creator_audit_event
    audit_events:
      - PUBLISH_READINESS_VALIDATED
    runtime_jobs: []
    notes:
      - approval and rights blocker must stay distinct

  create_publish_request:
    endpoint: POST /api/stream-studio/publish-requests
    handler: create_publish_request_handler
    service: publish_request_create_service
    validator: create_publish_request_validator
    writes:
      - creator_publish_request
      - creator_audit_event
    audit_events:
      - PUBLISH_REQUEST_CREATED
    runtime_jobs: []
    notes:
      - immediate publish request only registers request in phase 1 unless executor exists

  schedule_publish:
    endpoint: POST /api/stream-studio/publish-requests/schedule
    handler: schedule_publish_handler
    service: publish_schedule_service
    validator: schedule_publish_validator
    writes:
      - creator_publish_request
      - creator_runtime_job
      - creator_audit_event
    audit_events:
      - PUBLISH_SCHEDULED
    runtime_jobs:
      - SCHEDULED_PUBLISH_EXECUTOR
    notes:
      - explicit execute_after required

  list_publish_history:
    endpoint: GET /api/stream-studio/publish-history
    handler: list_publish_history_handler
    service: publish_history_service
    validator: list_publish_history_query_validator
    writes: []
    audit_events: []
    runtime_jobs: []
    notes:
      - canonical_publish_status and external_push_status remain separated

# ============================================================
# 2. PHASE 1 BACKEND MODULE ORDER
# ============================================================

backend_build_order:
- validation_core
- envelope_core
- permission_gate_core
- project_service
- upload_service
- draft_service
- publish_setting_service
- publish_request_service
- runtime_job_registration
- audit_event_writer

# ============================================================
# 3. PHASE 1 BACKEND DONE STATEMENT
# ============================================================

done_statement:
Phase 1 backend is complete when all listed endpoints,
validators, audit events, and runtime registrations are implemented
without semantic drift from exact docs.
