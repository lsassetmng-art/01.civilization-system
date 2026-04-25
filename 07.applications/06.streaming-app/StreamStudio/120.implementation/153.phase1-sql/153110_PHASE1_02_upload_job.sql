BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_upload_job (
  creator_upload_job_id text PRIMARY KEY,
  creator_project_id text NOT NULL,
  source_file_name text NOT NULL,
  file_size_bytes bigint NOT NULL,
  mime_type text NOT NULL,
  ingest_status text NOT NULL DEFAULT 'queued',
  resumable_session_ref text NOT NULL,
  failure_summary text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_upload_job_file_size_chk
    CHECK (file_size_bytes > 0),
  CONSTRAINT creator_upload_job_ingest_status_chk
    CHECK (ingest_status IN (
      'queued',
      'uploading',
      'processing',
      'completed',
      'failed',
      'cancelled'
    ))
);

COMMIT;
