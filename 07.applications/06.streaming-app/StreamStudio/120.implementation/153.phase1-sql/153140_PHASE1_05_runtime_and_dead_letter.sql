BEGIN;

CREATE SCHEMA IF NOT EXISTS __STREAM_STUDIO_SCHEMA__;

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_runtime_job (
  creator_runtime_job_id text PRIMARY KEY,
  job_type text NOT NULL,
  target_ref text NOT NULL,
  target_scope text NOT NULL,
  state text NOT NULL DEFAULT 'queued',
  attempt_count integer NOT NULL DEFAULT 0,
  max_attempts integer NOT NULL,
  idempotency_key text NULL,
  priority_code text NOT NULL DEFAULT 'normal',
  scheduled_at timestamptz NOT NULL,
  started_at timestamptz NULL,
  finished_at timestamptz NULL,
  next_retry_at timestamptz NULL,
  last_error_code text NULL,
  last_error_summary text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_runtime_job_state_chk
    CHECK (state IN (
      'queued',
      'running',
      'succeeded',
      'retry_wait',
      'dead_letter',
      'cancelled'
    )),
  CONSTRAINT creator_runtime_job_priority_code_chk
    CHECK (priority_code IN (
      'low',
      'normal',
      'high',
      'critical'
    )),
  CONSTRAINT creator_runtime_job_attempt_count_chk
    CHECK (attempt_count >= 0),
  CONSTRAINT creator_runtime_job_max_attempts_chk
    CHECK (max_attempts >= 1)
);

CREATE TABLE IF NOT EXISTS __STREAM_STUDIO_SCHEMA__.creator_dead_letter_entry (
  creator_dead_letter_entry_id text PRIMARY KEY,
  original_job_id text NOT NULL,
  job_type text NOT NULL,
  target_ref text NOT NULL,
  target_scope text NOT NULL,
  terminal_reason_code text NOT NULL,
  terminal_reason_summary text NOT NULL,
  final_attempt_count integer NOT NULL,
  last_error_code text NULL,
  recommended_operator_action text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT creator_dead_letter_entry_attempt_count_chk
    CHECK (final_attempt_count >= 0),
  CONSTRAINT creator_dead_letter_entry_operator_action_chk
    CHECK (recommended_operator_action IN (
      'inspect',
      'retry_as_new',
      'override',
      'cancel'
    ))
);

COMMIT;
