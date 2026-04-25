# ============================================================
# LIFE OS ADMIN REVIEW AND CORRECTION EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
layer: 120.implementation / 090.interface / 050.flow
document_code: 925280
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact admin, review, correction, and operator-side behavior for LifeOS.
- Define safe correction handling without overwriting canonical fact history.
- Clarify manual review, approval, reject, reopen, and escalation routes.

db_environment_rule:
- persona-side database work uses PERSONA_DATABASE_URL
- erp-side database work uses DATABASE_URL
- this document is design only and does not execute database changes

principles:
- append-first
- no destructive overwrite of canonical fact logs
- correction creates reviewed successor records or correction events
- operator tools are separated from end-user tools
- every manual operation must be auditable

review_domains:
- habit review
- health metric anomaly review
- goal event correction review
- integration ingest conflict review
- daily check-in moderation
- sync conflict review
- outbox replay exception review

roles:
- end_user
- reviewer
- operator
- admin
- audit_reader

role_capabilities:
- end_user:
  - submit records
  - request correction
  - cancel draft
  - view own review results
- reviewer:
  - inspect pending review queues
  - approve
  - reject
  - request more info
  - escalate
- operator:
  - replay safe jobs
  - unlock non-user-facing process states
  - close resolved technical incidents
- admin:
  - manage access
  - configure thresholds
  - define queue routing
  - disable broken integration channels
- audit_reader:
  - read-only access to correction and review history

canonical review entities:
- review_case
- review_decision
- correction_request
- correction_resolution
- operator_action_log
- manual_replay_request
- sync_conflict_case
- ingest_conflict_case

review_case exact fields:
- review_case_id: uuid pk
- review_scope: enum
- review_reason_code: text
- source_record_type: text
- source_record_id: uuid
- user_id: uuid
- review_status: enum
- priority_level: enum
- assigned_role: enum
- assigned_user_id: uuid nullable
- created_at: timestamptz
- due_at: timestamptz nullable
- resolved_at: timestamptz nullable
- latest_note: text nullable

review_status enum:
- pending
- in_review
- waiting_user
- approved
- rejected
- escalated
- resolved
- cancelled

review_decision exact fields:
- review_decision_id: uuid pk
- review_case_id: uuid fk
- decision_type: enum
- decided_by_user_id: uuid
- decision_note: text
- decision_payload_json: jsonb
- decided_at: timestamptz

decision_type enum:
- approve
- reject
- request_more_info
- escalate
- resolve_no_change
- resolve_with_correction

correction_request exact fields:
- correction_request_id: uuid pk
- request_scope: enum
- source_record_type: text
- source_record_id: uuid
- requested_by_user_id: uuid
- correction_reason_code: text
- requested_change_json: jsonb
- request_status: enum
- created_at: timestamptz
- closed_at: timestamptz nullable

request_status enum:
- submitted
- under_review
- accepted
- rejected
- applied
- cancelled

correction_resolution exact fields:
- correction_resolution_id: uuid pk
- correction_request_id: uuid fk
- resolution_type: enum
- created_successor_record_id: uuid nullable
- emitted_correction_event_id: uuid nullable
- resolved_by_user_id: uuid
- resolution_note: text
- resolved_at: timestamptz

resolution_type enum:
- successor_record_created
- correction_event_emitted
- no_change
- duplicate_request_closed

operator_action_log exact fields:
- operator_action_id: uuid pk
- action_scope: enum
- target_type: text
- target_id: uuid
- action_type: enum
- action_input_json: jsonb
- action_result_json: jsonb
- executed_by_user_id: uuid
- executed_at: timestamptz

action_type enum:
- replay_job
- unlock_case
- close_incident
- retry_delivery
- mark_dead_letter
- reopen_case
- reassign_case

admin routes:
- /life/admin/review
- /life/admin/review/:reviewCaseId
- /life/admin/corrections
- /life/admin/corrections/:correctionRequestId
- /life/admin/sync-conflicts
- /life/admin/ingest-conflicts
- /life/admin/outbox-ops
- /life/admin/operator-actions
- /life/admin/settings/review-rules

screen-state exactness:
- review queue:
  - loading
  - ready
  - empty
  - filter_applied
  - bulk_action_pending
  - bulk_action_success
  - bulk_action_partial_failure
- review detail:
  - loading
  - ready
  - approve_confirm_open
  - reject_confirm_open
  - escalate_confirm_open
  - note_required_error
  - success_toast
- correction detail:
  - source_snapshot_loaded
  - proposed_change_loaded
  - conflict_detected
  - successor_preview_loaded
  - apply_disabled_until_review
- outbox ops:
  - queue_summary_loaded
  - dead_letter_only
  - replay_requested
  - replay_running
  - replay_completed
  - replay_failed

review queue filters:
- scope
- reason_code
- priority
- assigned_role
- assigned_user
- due_today
- overdue
- waiting_user
- escalated

bulk operations allowed:
- assign reviewer
- change priority
- close duplicate
- mark waiting_user
- escalate

bulk operations forbidden:
- bulk approve with hidden payload differences
- bulk correction apply when source record types differ
- bulk replay for mixed channels without shared safety key

api endpoints:
- GET /api/life/v1/admin/review-cases
- GET /api/life/v1/admin/review-cases/{reviewCaseId}
- POST /api/life/v1/admin/review-cases/{reviewCaseId}/approve
- POST /api/life/v1/admin/review-cases/{reviewCaseId}/reject
- POST /api/life/v1/admin/review-cases/{reviewCaseId}/request-more-info
- POST /api/life/v1/admin/review-cases/{reviewCaseId}/escalate
- POST /api/life/v1/admin/corrections
- GET /api/life/v1/admin/corrections/{correctionRequestId}
- POST /api/life/v1/admin/corrections/{correctionRequestId}/apply
- GET /api/life/v1/admin/sync-conflicts
- POST /api/life/v1/admin/sync-conflicts/{conflictCaseId}/resolve
- POST /api/life/v1/admin/outbox/replay
- GET /api/life/v1/admin/operator-actions

approval request payload:
- idempotencyKey: string
- decisionNote: string
- resolutionType: enum
- correctionMode: enum nullable
- successorPreviewAccepted: boolean

reject request payload:
- idempotencyKey: string
- decisionNote: string
- rejectReasonCode: string
- allowUserResubmission: boolean

request more info payload:
- idempotencyKey: string
- questionList: array<string>
- dueAt: iso8601 datetime nullable

escalate payload:
- idempotencyKey: string
- escalationReasonCode: string
- targetRole: enum
- escalationNote: string

correction apply payload:
- idempotencyKey: string
- correctionMode: enum
- newCanonicalPayload: object nullable
- emitCorrectionEvent: boolean
- resolutionNote: string

correctionMode enum:
- create_successor
- emit_correction_event
- close_without_change

review queue response exactness:
- items[].reviewCaseId
- items[].reviewScope
- items[].reviewReasonCode
- items[].sourceRecordType
- items[].sourceRecordId
- items[].reviewStatus
- items[].priorityLevel
- items[].assignedRole
- items[].assignedUserId
- items[].createdAt
- items[].dueAt
- items[].userDisplaySummary
- items[].requiresPayloadInspection

audit exactness:
- every approval, reject, escalate, apply, replay, and unlock writes operator_action_log
- review_decision is immutable after insert
- correction_resolution is immutable after insert
- review_case mutable columns are limited to status, assignee, priority, due_at, latest_note

acceptance gates:
- no canonical fact table row is overwritten in place by admin UI
- every correction path produces traceable audit data
- idempotency key is mandatory for every state-changing admin endpoint
- replay endpoints reject requests without bounded filters
- review decisions are recoverable from audit trail only

not_in_scope:
- auth provider implementation
- database DDL execution
- background worker code

