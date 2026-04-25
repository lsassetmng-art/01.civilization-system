# ============================================================
# STREAM STUDIO PHASE 1 AUDIT AND RUNTIME DDL EXACT DESIGN
# ============================================================

status: sql-pre-ddl
layer: implementation-db-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the DDL intent for audit, runtime job, and dead-letter records in Phase 1.

# ============================================================
# 1. AUDIT TABLE DESIGN PRINCIPLES
# ============================================================

audit_principles:
- append-only
- no destructive update in normal flow
- target_ref searchable
- actor_ref searchable
- action_code searchable
- payload_summary_json bounded and non-canonical
- result_code separate from action_code

required_phase1_action_codes:
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

# ============================================================
# 2. RUNTIME JOB DESIGN PRINCIPLES
# ============================================================

runtime_principles:
- first-class table, not hidden queue metadata
- state is explicit
- retry planning is explicit
- idempotency key may be nullable but supported
- target_ref + target_scope model heterogeneous target support
- scheduled publish is the minimum required phase 1 runtime use case

required_phase1_job_types:
- UPLOAD_INGEST_FINALIZER
- THUMBNAIL_DERIVATIVE_JOB
- SUBTITLE_PACKAGING_JOB
- SCHEDULED_PUBLISH_EXECUTOR

required_phase1_job_states:
- queued
- running
- succeeded
- retry_wait
- dead_letter
- cancelled

required_phase1_priority_codes:
- normal
- high
- critical_optional

# ============================================================
# 3. DEAD LETTER DESIGN PRINCIPLES
# ============================================================

dead_letter_principles:
- visible terminal state
- tied back to original job
- stores terminal reason and operator recommendation
- no silent discard of terminal scheduled publish failures

minimum_terminal_reason_examples:
- TEMPORARY_UNAVAILABLE_EXHAUSTED
- INVALID_REQUEST_SHAPE
- POLICY_BLOCKED
- RIGHTS_BLOCKED
- INVALID_SCHEDULE_WINDOW
- DOWNSTREAM_TIMEOUT_EXHAUSTED

# ============================================================
# 4. PHASE 1 AUDIT / RUNTIME WRITE ORDER
# ============================================================

write_order_direction:

  create_project:
    - write business row
    - write audit row

  complete_upload:
    - update upload row
    - write runtime job when needed
    - write audit row

  assign_thumbnail:
    - update draft row
    - write runtime job when derivative required
    - write audit row

  add_subtitle_track:
    - write subtitle row
    - write runtime job
    - write audit row

  schedule_publish:
    - write publish request
    - write scheduled publish runtime job
    - write audit row

principle:
Audit and runtime visibility are phase 1 responsibilities,
not later hardening leftovers.

# ============================================================
# 5. PHASE 1 RUNTIME RETRY MINIMUMS
# ============================================================

phase1_retry_minimums:
  UPLOAD_INGEST_FINALIZER:
    max_attempts: 5

  THUMBNAIL_DERIVATIVE_JOB:
    max_attempts: 5

  SUBTITLE_PACKAGING_JOB:
    max_attempts: 5

  SCHEDULED_PUBLISH_EXECUTOR:
    max_attempts: 5

minimum_retry_fields_required:
- attempt_count
- max_attempts
- next_retry_at
- last_error_code
- last_error_summary

# ============================================================
# 6. FIXED AUDIT / RUNTIME STATEMENT
# ============================================================

fixed_statement:
Audit trail, runtime job visibility, and dead-letter design
are part of Phase 1 DDL scope and must not be deferred.
