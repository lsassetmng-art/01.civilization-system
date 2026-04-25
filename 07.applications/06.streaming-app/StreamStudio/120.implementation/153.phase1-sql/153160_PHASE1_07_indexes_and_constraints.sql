BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE UNIQUE INDEX IF NOT EXISTS uq_creator_project_project_code
  ON __STREAM_STUDIO_SCHEMA__.creator_project (project_code);

CREATE INDEX IF NOT EXISTS idx_creator_project_owner_status_updated
  ON __STREAM_STUDIO_SCHEMA__.creator_project (owner_creator_ref, project_status, updated_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_project_member_project
  ON __STREAM_STUDIO_SCHEMA__.creator_project_member (creator_project_id);

CREATE INDEX IF NOT EXISTS idx_creator_project_member_member_updated
  ON __STREAM_STUDIO_SCHEMA__.creator_project_member (member_ref, updated_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_upload_job_project_status_updated
  ON __STREAM_STUDIO_SCHEMA__.creator_upload_job (creator_project_id, ingest_status, updated_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_upload_job_resumable_session_ref
  ON __STREAM_STUDIO_SCHEMA__.creator_upload_job (resumable_session_ref);

CREATE INDEX IF NOT EXISTS idx_creator_video_draft_project_status_updated
  ON __STREAM_STUDIO_SCHEMA__.creator_video_draft (creator_project_id, draft_status, updated_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_video_draft_asset_ref
  ON __STREAM_STUDIO_SCHEMA__.creator_video_draft (asset_ref);

CREATE INDEX IF NOT EXISTS idx_creator_edit_marker_draft
  ON __STREAM_STUDIO_SCHEMA__.creator_edit_marker (creator_video_draft_id);

CREATE INDEX IF NOT EXISTS idx_creator_subtitle_track_draft
  ON __STREAM_STUDIO_SCHEMA__.creator_subtitle_track (creator_video_draft_id);

CREATE INDEX IF NOT EXISTS idx_creator_subtitle_track_language
  ON __STREAM_STUDIO_SCHEMA__.creator_subtitle_track (language_code);

CREATE INDEX IF NOT EXISTS idx_creator_publish_setting_publish_ref
  ON __STREAM_STUDIO_SCHEMA__.creator_publish_setting (publish_ref);

CREATE INDEX IF NOT EXISTS idx_creator_publish_setting_readiness_status
  ON __STREAM_STUDIO_SCHEMA__.creator_publish_setting (readiness_status);

CREATE INDEX IF NOT EXISTS idx_creator_publish_request_publish_ref_status_created
  ON __STREAM_STUDIO_SCHEMA__.creator_publish_request (publish_ref, request_status, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_publish_request_execute_after
  ON __STREAM_STUDIO_SCHEMA__.creator_publish_request (execute_after);

CREATE INDEX IF NOT EXISTS idx_creator_runtime_job_type_state_next_retry
  ON __STREAM_STUDIO_SCHEMA__.creator_runtime_job (job_type, state, next_retry_at);

CREATE INDEX IF NOT EXISTS idx_creator_runtime_job_target_ref
  ON __STREAM_STUDIO_SCHEMA__.creator_runtime_job (target_ref);

CREATE UNIQUE INDEX IF NOT EXISTS uq_creator_runtime_job_idempotency
  ON __STREAM_STUDIO_SCHEMA__.creator_runtime_job (job_type, target_ref, idempotency_key)
  WHERE idempotency_key IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_creator_dead_letter_job_type_created
  ON __STREAM_STUDIO_SCHEMA__.creator_dead_letter_entry (job_type, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_dead_letter_target_ref
  ON __STREAM_STUDIO_SCHEMA__.creator_dead_letter_entry (target_ref);

CREATE INDEX IF NOT EXISTS idx_creator_audit_event_target_ref_created
  ON __STREAM_STUDIO_SCHEMA__.creator_audit_event (target_ref, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_audit_event_actor_ref_created
  ON __STREAM_STUDIO_SCHEMA__.creator_audit_event (actor_ref, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_creator_audit_event_action_code_created
  ON __STREAM_STUDIO_SCHEMA__.creator_audit_event (action_code, created_at DESC);

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'fk_creator_project_member_project'
  ) THEN
    ALTER TABLE __STREAM_STUDIO_SCHEMA__.creator_project_member
      ADD CONSTRAINT fk_creator_project_member_project
      FOREIGN KEY (creator_project_id)
      REFERENCES __STREAM_STUDIO_SCHEMA__.creator_project (creator_project_id);
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'fk_creator_upload_job_project'
  ) THEN
    ALTER TABLE __STREAM_STUDIO_SCHEMA__.creator_upload_job
      ADD CONSTRAINT fk_creator_upload_job_project
      FOREIGN KEY (creator_project_id)
      REFERENCES __STREAM_STUDIO_SCHEMA__.creator_project (creator_project_id);
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'fk_creator_video_draft_project'
  ) THEN
    ALTER TABLE __STREAM_STUDIO_SCHEMA__.creator_video_draft
      ADD CONSTRAINT fk_creator_video_draft_project
      FOREIGN KEY (creator_project_id)
      REFERENCES __STREAM_STUDIO_SCHEMA__.creator_project (creator_project_id);
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'fk_creator_edit_marker_draft'
  ) THEN
    ALTER TABLE __STREAM_STUDIO_SCHEMA__.creator_edit_marker
      ADD CONSTRAINT fk_creator_edit_marker_draft
      FOREIGN KEY (creator_video_draft_id)
      REFERENCES __STREAM_STUDIO_SCHEMA__.creator_video_draft (creator_video_draft_id);
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'fk_creator_subtitle_track_draft'
  ) THEN
    ALTER TABLE __STREAM_STUDIO_SCHEMA__.creator_subtitle_track
      ADD CONSTRAINT fk_creator_subtitle_track_draft
      FOREIGN KEY (creator_video_draft_id)
      REFERENCES __STREAM_STUDIO_SCHEMA__.creator_video_draft (creator_video_draft_id);
  END IF;
END
$$;

COMMIT;
