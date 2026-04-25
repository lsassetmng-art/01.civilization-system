BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_project (
  creator_project_id text PRIMARY KEY,
  project_code text NOT NULL,
  project_title text NOT NULL,
  project_summary text NULL,
  project_status text NOT NULL DEFAULT 'draft',
  owner_creator_ref text NOT NULL,
  default_language text NOT NULL,
  version integer NOT NULL DEFAULT 1,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_project_project_status_chk
    CHECK (project_status IN (
      'draft',
      'in_review',
      'approval_pending',
      'publish_ready',
      'scheduled',
      'published',
      'failed',
      'archived'
    )),
  CONSTRAINT creator_project_version_chk
    CHECK (version >= 1)
);

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_project_member (
  creator_project_member_id text PRIMARY KEY,
  creator_project_id text NOT NULL,
  member_ref text NOT NULL,
  role_code text NOT NULL,
  permission_profile_ref text NULL,
  assignment_scope_summary jsonb NULL,
  due_at timestamptz NULL,
  joined_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_project_member_role_code_chk
    CHECK (role_code IN (
      'creator',
      'collaborator',
      'producer',
      'admin',
      'membership_operator'
    ))
);

COMMIT;
