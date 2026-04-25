# ============================================================
# STREAM STUDIO PHASE 1 BACKEND FILE SCAFFOLD LEDGER
# ============================================================

status: starter-ledger
layer: implementation-fileset
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the logical backend file scaffold for Phase 1.

policy:
- this ledger fixes logical file names and responsibilities
- physical language extension remains unresolved at this stage
- use the same logical names regardless of implementation language
- one file should have one main responsibility

recommended_backend_root:
- backend/stream_studio/

# ============================================================
# 1. PROJECT DOMAIN
# ============================================================

project_files:
- backend/stream_studio/project/create_project_handler
- backend/stream_studio/project/list_projects_handler
- backend/stream_studio/project/get_project_detail_handler
- backend/stream_studio/project/update_project_handler
- backend/stream_studio/project/project_service
- backend/stream_studio/project/project_repository
- backend/stream_studio/project/project_validator
- backend/stream_studio/project/project_mapper

responsibility_notes:
  create_project_handler:
    - receive POST create project request
    - return standardized response envelope
  project_service:
    - project create / update / read orchestration
  project_repository:
    - DB read / write operations only
  project_validator:
    - request validation and expected_version checks
  project_mapper:
    - convert persistence models to contract payloads

# ============================================================
# 2. UPLOAD DOMAIN
# ============================================================

upload_files:
- backend/stream_studio/upload/create_upload_session_handler
- backend/stream_studio/upload/complete_upload_handler
- backend/stream_studio/upload/get_upload_status_handler
- backend/stream_studio/upload/retry_upload_handler
- backend/stream_studio/upload/upload_service
- backend/stream_studio/upload/upload_repository
- backend/stream_studio/upload/upload_validator
- backend/stream_studio/upload/upload_status_mapper

responsibility_notes:
  upload_service:
    - resumable session create
    - ingest status transition
    - retry classification bridge
  upload_repository:
    - creator_upload_job persistence
  upload_validator:
    - upload request shape validation
    - retry_mode validation

# ============================================================
# 3. VIDEO DRAFT DOMAIN
# ============================================================

draft_files:
- backend/stream_studio/draft/create_video_draft_handler
- backend/stream_studio/draft/update_metadata_handler
- backend/stream_studio/draft/assign_thumbnail_handler
- backend/stream_studio/draft/add_subtitle_track_handler
- backend/stream_studio/draft/upsert_edit_marker_handler
- backend/stream_studio/draft/draft_service
- backend/stream_studio/draft/draft_repository
- backend/stream_studio/draft/draft_validator
- backend/stream_studio/draft/draft_mapper

responsibility_notes:
  draft_service:
    - draft mutation orchestration
    - optimistic lock enforcement coordination
  draft_repository:
    - creator_video_draft / creator_edit_marker / creator_subtitle_track persistence
  draft_validator:
    - metadata length rules
    - marker range rules
    - subtitle source rules

# ============================================================
# 4. PUBLISH DOMAIN
# ============================================================

publish_files:
- backend/stream_studio/publish/upsert_publish_setting_handler
- backend/stream_studio/publish/validate_publish_readiness_handler
- backend/stream_studio/publish/create_publish_request_handler
- backend/stream_studio/publish/schedule_publish_handler
- backend/stream_studio/publish/list_publish_history_handler
- backend/stream_studio/publish/publish_service
- backend/stream_studio/publish/publish_repository
- backend/stream_studio/publish/publish_validator
- backend/stream_studio/publish/publish_mapper

responsibility_notes:
  publish_service:
    - publish setting save
    - readiness evaluation
    - publish request registration
    - scheduled publish registration
  publish_repository:
    - creator_publish_setting / creator_publish_request persistence
  publish_validator:
    - schedule rules
    - publish_ref rules
    - visibility rules

# ============================================================
# 5. SHARED PHASE 1 CORE
# ============================================================

shared_core_files:
- backend/stream_studio/core/response_envelope
- backend/stream_studio/core/error_factory
- backend/stream_studio/core/validation_code_registry
- backend/stream_studio/core/business_rule_code_registry
- backend/stream_studio/core/permission_gate
- backend/stream_studio/core/request_context
- backend/stream_studio/core/idempotency_guard
- backend/stream_studio/core/version_guard

audit_runtime_files:
- backend/stream_studio/audit/audit_event_writer
- backend/stream_studio/audit/audit_event_repository
- backend/stream_studio/runtime/runtime_job_repository
- backend/stream_studio/runtime/runtime_job_registration_service
- backend/stream_studio/runtime/runtime_job_state_mapper

# ============================================================
# 6. PHASE 1 BACKEND FILESET DONE STATEMENT
# ============================================================

fixed_statement:
The logical backend files above are frozen as the Phase 1 starter scaffold.
Physical extension and framework binding may vary,
but file responsibility separation should remain stable.
