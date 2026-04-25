# ============================================================
# PERSONA BUILDER STORAGE MAPPING
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / builder storage
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Canonical tables

### builder_draft
Primary key: `builder_draft_id`
Unique keys:
- `(persona_root_id, draft_code, is_active)`

Indexes:
- `(persona_root_id, state)`
- `(updated_at desc)`

### builder_section_state
Primary key: `builder_section_state_id`
Unique keys:
- `(builder_draft_id, section_code)`

Indexes:
- `(builder_draft_id, section_code, section_revision desc)`

### builder_change_set
Primary key: `builder_change_set_id`
Indexes:
- `(builder_draft_id, created_at desc)`

### builder_validation_run
Primary key: `validation_run_id`
Indexes:
- `(builder_draft_id, status, requested_at desc)`

### builder_validation_issue
Primary key: `validation_issue_id`
Indexes:
- `(validation_run_id, severity, issue_code)`

### builder_approval_request
Primary key: `approval_request_id`
Indexes:
- `(builder_draft_id, status, requested_at desc)`

### builder_approval_decision
Primary key: `approval_decision_id`
Indexes:
- `(approval_request_id, decided_at desc)`

### builder_publish_candidate
Primary key: `publish_candidate_id`
Indexes:
- `(builder_draft_id, created_at desc)`

### builder_publish_execution
Primary key: `publish_execution_id`
Indexes:
- `(builder_draft_id, status, started_at desc)`
- `(persona_root_id, status)`

### builder_audit_record
Primary key: `builder_audit_record_id`
Indexes:
- `(builder_draft_id, occurred_at desc)`
- `(actor_id, occurred_at desc)`

## Required common columns

Append to all tables:
- `created_at`
- `updated_at`
- `created_by_actor_id`
- `updated_by_actor_id`

Append to mutable aggregates:
- `row_version`
- `is_deleted`

## Integrity rules

- `builder_section_state.builder_draft_id` -> `builder_draft.builder_draft_id`
- `builder_validation_issue.validation_run_id` -> `builder_validation_run.validation_run_id`
- `builder_approval_decision.approval_request_id` -> `builder_approval_request.approval_request_id`
- `builder_publish_execution.builder_draft_id` -> `builder_draft.builder_draft_id`

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: builder

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.
