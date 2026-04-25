BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_audit_event (
  creator_audit_event_id text PRIMARY KEY,
  actor_ref text NOT NULL,
  role_code text NOT NULL,
  action_code text NOT NULL,
  result_code text NOT NULL,
  scope_ref text NOT NULL,
  target_ref text NOT NULL,
  request_id text NULL,
  reason_note text NULL,
  payload_summary_json jsonb NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_audit_event_role_code_chk
    CHECK (role_code IN (
      'creator',
      'collaborator',
      'producer',
      'admin',
      'membership_operator'
    )),
  CONSTRAINT creator_audit_event_result_code_chk
    CHECK (result_code IN (
      'succeeded',
      'failed',
      'blocked',
      'cancelled',
      'expired'
    ))
);

COMMIT;
