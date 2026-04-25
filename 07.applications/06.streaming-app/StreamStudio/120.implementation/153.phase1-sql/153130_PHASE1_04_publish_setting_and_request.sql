BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_publish_setting (
  creator_publish_setting_id text PRIMARY KEY,
  publish_ref text NOT NULL,
  visibility_code text NOT NULL,
  scheduled_publish_at timestamptz NULL,
  publish_destination_summary jsonb NOT NULL,
  rights_check_status text NOT NULL DEFAULT 'pending',
  readiness_status text NOT NULL DEFAULT 'pending',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_publish_setting_visibility_code_chk
    CHECK (visibility_code IN (
      'private',
      'limited',
      'public',
      'scheduled_public'
    )),
  CONSTRAINT creator_publish_setting_rights_check_status_chk
    CHECK (rights_check_status IN (
      'pending',
      'passed',
      'failed'
    )),
  CONSTRAINT creator_publish_setting_readiness_status_chk
    CHECK (readiness_status IN (
      'pending',
      'ready',
      'blocked'
    ))
);

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_publish_request (
  creator_publish_request_id text PRIMARY KEY,
  publish_ref text NOT NULL,
  request_status text NOT NULL DEFAULT 'requested',
  requested_by text NOT NULL,
  request_channel text NOT NULL,
  execute_after timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_publish_request_request_channel_chk
    CHECK (request_channel IN ('manual', 'scheduler')),
  CONSTRAINT creator_publish_request_request_status_chk
    CHECK (request_status IN (
      'requested',
      'scheduled',
      'processing',
      'published',
      'failed',
      'cancelled'
    ))
);

COMMIT;
