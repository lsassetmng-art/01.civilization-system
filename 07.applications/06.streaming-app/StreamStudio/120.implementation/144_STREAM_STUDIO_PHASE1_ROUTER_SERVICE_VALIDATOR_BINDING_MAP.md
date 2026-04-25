# ============================================================
# STREAM STUDIO PHASE 1 ROUTER SERVICE VALIDATOR BINDING MAP
# ============================================================

status: starter-map
layer: implementation-binding
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Binds handlers, services, validators, repositories,
audit writers, and runtime registration for Phase 1.

binding_table:

- route: POST /api/stream-studio/projects
  handler: create_project_handler
  validator: project_validator.create_project
  service: project_service.create_project
  repository: project_repository
  audit: audit_event_writer.PROJECT_CREATED
  runtime: none

- route: GET /api/stream-studio/projects
  handler: list_projects_handler
  validator: project_validator.list_projects
  service: project_service.list_projects
  repository: project_repository
  audit: none
  runtime: none

- route: GET /api/stream-studio/projects/{creator_project_id}
  handler: get_project_detail_handler
  validator: project_validator.get_project_detail
  service: project_service.get_project_detail
  repository: project_repository
  audit: none
  runtime: none

- route: PATCH /api/stream-studio/projects/{creator_project_id}
  handler: update_project_handler
  validator: project_validator.update_project
  service: project_service.update_project
  repository: project_repository
  audit: audit_event_writer.PROJECT_UPDATED
  runtime: none

- route: POST /api/stream-studio/uploads/sessions
  handler: create_upload_session_handler
  validator: upload_validator.create_upload_session
  service: upload_service.create_upload_session
  repository: upload_repository
  audit: audit_event_writer.UPLOAD_SESSION_CREATED
  runtime: none

- route: POST /api/stream-studio/uploads/{creator_upload_job_id}/complete
  handler: complete_upload_handler
  validator: upload_validator.complete_upload
  service: upload_service.complete_upload
  repository: upload_repository
  audit: audit_event_writer.UPLOAD_COMPLETED
  runtime: runtime_job_registration_service.register_upload_ingest_finalizer

- route: GET /api/stream-studio/uploads/{creator_upload_job_id}
  handler: get_upload_status_handler
  validator: upload_validator.get_upload_status
  service: upload_service.get_upload_status
  repository: upload_repository
  audit: none
  runtime: none

- route: POST /api/stream-studio/uploads/{creator_upload_job_id}/retry
  handler: retry_upload_handler
  validator: upload_validator.retry_upload
  service: upload_service.retry_upload
  repository: upload_repository
  audit: audit_event_writer.UPLOAD_RETRIED
  runtime: none

- route: POST /api/stream-studio/video-drafts
  handler: create_video_draft_handler
  validator: draft_validator.create_video_draft
  service: draft_service.create_video_draft
  repository: draft_repository
  audit: audit_event_writer.VIDEO_DRAFT_CREATED
  runtime: none

- route: PATCH /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata
  handler: update_metadata_handler
  validator: draft_validator.update_metadata
  service: draft_service.update_metadata
  repository: draft_repository
  audit: audit_event_writer.DRAFT_METADATA_UPDATED
  runtime: none

- route: PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/thumbnail
  handler: assign_thumbnail_handler
  validator: draft_validator.assign_thumbnail
  service: draft_service.assign_thumbnail
  repository: draft_repository
  audit: audit_event_writer.THUMBNAIL_ASSIGNED
  runtime: runtime_job_registration_service.register_thumbnail_derivative_job

- route: POST /api/stream-studio/video-drafts/{creator_video_draft_id}/subtitle-tracks
  handler: add_subtitle_track_handler
  validator: draft_validator.add_subtitle_track
  service: draft_service.add_subtitle_track
  repository: draft_repository
  audit: audit_event_writer.SUBTITLE_TRACK_ADDED
  runtime: runtime_job_registration_service.register_subtitle_packaging_job

- route: PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/edit-markers/{client_marker_key}
  handler: upsert_edit_marker_handler
  validator: draft_validator.upsert_edit_marker
  service: draft_service.upsert_edit_marker
  repository: draft_repository
  audit: audit_event_writer.EDIT_MARKER_UPSERTED
  runtime: none

- route: PUT /api/stream-studio/publish-settings/{publish_ref}
  handler: upsert_publish_setting_handler
  validator: publish_validator.upsert_publish_setting
  service: publish_service.upsert_publish_setting
  repository: publish_repository
  audit: audit_event_writer.PUBLISH_SETTING_SAVED
  runtime: none

- route: POST /api/stream-studio/publish-settings/{publish_ref}/validate
  handler: validate_publish_readiness_handler
  validator: publish_validator.validate_publish_readiness
  service: publish_service.validate_publish_readiness
  repository: publish_repository
  audit: audit_event_writer.PUBLISH_READINESS_VALIDATED
  runtime: none

- route: POST /api/stream-studio/publish-requests
  handler: create_publish_request_handler
  validator: publish_validator.create_publish_request
  service: publish_service.create_publish_request
  repository: publish_repository
  audit: audit_event_writer.PUBLISH_REQUEST_CREATED
  runtime: none

- route: POST /api/stream-studio/publish-requests/schedule
  handler: schedule_publish_handler
  validator: publish_validator.schedule_publish
  service: publish_service.schedule_publish
  repository: publish_repository
  audit: audit_event_writer.PUBLISH_SCHEDULED
  runtime: runtime_job_registration_service.register_scheduled_publish_executor

- route: GET /api/stream-studio/publish-history
  handler: list_publish_history_handler
  validator: publish_validator.list_publish_history
  service: publish_service.list_publish_history
  repository: publish_repository
  audit: none
  runtime: none

fixed_statement:
Phase 1 binding must preserve exact contract boundaries:
handler -> validator -> service -> repository -> audit/runtime.
