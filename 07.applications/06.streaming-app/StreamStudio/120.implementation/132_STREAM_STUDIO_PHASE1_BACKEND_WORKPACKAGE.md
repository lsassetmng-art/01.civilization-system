# ============================================================
# STREAM STUDIO PHASE 1 BACKEND WORKPACKAGE
# ============================================================

status: workpackage
layer: implementation-backend
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines backend implementation work for Phase 1.

phase_1_backend_modules:
- project service
- upload session service
- upload status service
- video draft service
- metadata update service
- thumbnail assignment service
- subtitle track service
- edit marker service
- publish setting service
- publish readiness service
- publish request service
- scheduled publish registration service

required_api_contracts:
- POST /api/stream-studio/projects
- GET /api/stream-studio/projects
- GET /api/stream-studio/projects/{creator_project_id}
- PATCH /api/stream-studio/projects/{creator_project_id}
- POST /api/stream-studio/uploads/sessions
- POST /api/stream-studio/uploads/{creator_upload_job_id}/complete
- GET /api/stream-studio/uploads/{creator_upload_job_id}
- POST /api/stream-studio/uploads/{creator_upload_job_id}/retry
- POST /api/stream-studio/video-drafts
- PATCH /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata
- PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/thumbnail
- POST /api/stream-studio/video-drafts/{creator_video_draft_id}/subtitle-tracks
- PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/edit-markers/{client_marker_key}
- PUT /api/stream-studio/publish-settings/{publish_ref}
- POST /api/stream-studio/publish-settings/{publish_ref}/validate
- POST /api/stream-studio/publish-requests
- POST /api/stream-studio/publish-requests/schedule
- GET /api/stream-studio/publish-history

backend_rules_to_enforce:
- optimistic locking for mutable draft and project records
- validation and business-rule error separation
- publish readiness cannot silently skip approval or rights checks
- scheduled publish must create explicit future execution record
- publish and external push results remain separated
- phase 1 does not activate marketplace or membership logic

audit_events_minimum:
- PROJECT_CREATED
- PROJECT_UPDATED
- UPLOAD_SESSION_CREATED
- UPLOAD_COMPLETED
- UPLOAD_RETRIED
- VIDEO_DRAFT_CREATED
- DRAFT_METADATA_UPDATED
- THUMBNAIL_ASSIGNED
- SUBTITLE_TRACK_ADDED
- EDIT_MARKER_UPSERTED
- PUBLISH_SETTING_SAVED
- PUBLISH_READINESS_VALIDATED
- PUBLISH_REQUEST_CREATED
- PUBLISH_SCHEDULED

backend_done_definition:
- all listed endpoints return standardized envelope
- all listed validation codes are wired
- all listed audit events are emitted
- scheduled publish request persistence works
- readiness blockers are surfaced distinctly
