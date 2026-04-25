BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_video_draft (
  creator_video_draft_id text PRIMARY KEY,
  creator_project_id text NOT NULL,
  asset_ref text NOT NULL,
  draft_status text NOT NULL DEFAULT 'draft',
  title text NULL,
  description text NULL,
  default_language text NOT NULL,
  tag_summary_json jsonb NULL,
  thumbnail_asset_ref text NULL,
  subtitle_package_ref text NULL,
  draft_version integer NOT NULL DEFAULT 1,
  version integer NOT NULL DEFAULT 1,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_video_draft_draft_status_chk
    CHECK (draft_status IN (
      'draft',
      'metadata_ready',
      'review_required',
      'in_review',
      'approval_pending',
      'publish_ready',
      'scheduled',
      'published',
      'failed',
      'archived'
    )),
  CONSTRAINT creator_video_draft_draft_version_chk
    CHECK (draft_version >= 1),
  CONSTRAINT creator_video_draft_version_chk
    CHECK (version >= 1)
);

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_edit_marker (
  creator_edit_marker_id text PRIMARY KEY,
  creator_video_draft_id text NOT NULL,
  marker_type text NOT NULL,
  start_ms integer NOT NULL,
  end_ms integer NOT NULL,
  marker_summary text NULL,
  created_by text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_edit_marker_marker_type_chk
    CHECK (marker_type IN ('trim', 'cut')),
  CONSTRAINT creator_edit_marker_start_ms_chk
    CHECK (start_ms >= 0),
  CONSTRAINT creator_edit_marker_end_ms_chk
    CHECK (end_ms > start_ms)
);

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_subtitle_track (
  creator_subtitle_track_id text PRIMARY KEY,
  creator_video_draft_id text NOT NULL,
  language_code text NOT NULL,
  source_type text NOT NULL,
  subtitle_status text NOT NULL DEFAULT 'draft',
  file_asset_ref text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_subtitle_track_source_type_chk
    CHECK (source_type IN ('uploaded', 'generated'))
);

COMMIT;
