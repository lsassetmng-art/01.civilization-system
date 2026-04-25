# ============================================================
# PERSONA STATE APPLY SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / truth apply
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Goal

This file fixes the exact apply state machine, retry rule, storage contract boundary, and terminal outcomes for truth reflection.

## Canonical apply state machine

```text
received
  -> signature-verified
  -> validated
  -> queued
  -> applying
  -> applied

validated
  -> rejected-terminal

applying
  -> failed-retryable
  -> failed-terminal
  -> dead-lettered
```

## Retry policy

- retry only when failure class is transient
- maximum attempts: `5`
- backoff seconds: `15, 60, 300, 900, 3600`
- after final retry failure -> `dead-lettered`

Retryable classes:
- storage transient failure
- queue timeout
- downstream lock timeout

Terminal classes:
- validation denied
- policy denied
- missing release
- foreign key integrity failure caused by invalid input

## Canonical truth objects mutated by apply

- `persona_truth_release_pointer`
- `persona_truth_profile`
- `persona_truth_behavior_rules`
- `persona_truth_capability_binding`
- `persona_truth_visual_binding`
- `persona_truth_guardrail_binding`

Rules:
- apply is atomic per `persona_root_id`
- all truth pointers switch to same `release_id`
- partial truth mutation is forbidden
- audit append is mandatory on every attempt

## Result contract

Successful apply result:
```json
{
  "apply_result_id": "01APR...",
  "status": "applied",
  "truth_release_id": "01REL...",
  "attempt_count": 1,
  "error_code": null
}
```

Rejected apply result:
```json
{
  "apply_result_id": "01APR...",
  "status": "rejected-terminal",
  "truth_release_id": null,
  "attempt_count": 0,
  "error_code": "persona_apply_policy_denied"
}
```

## Required storage rows

- `persona_apply_inbox`
- `persona_apply_result`
- `persona_apply_attempt`
- `persona_apply_dead_letter`
- `persona_apply_audit`

## Acceptance rules

Implementation is not complete unless all of the following pass:
- duplicate event id is idempotent
- invalid signature is rejected before queueing
- successful apply flips all truth pointers in one transaction
- retryable failure increments attempt count and reschedules
- terminal validation failure never retries
- dead-letter row is created after attempt 5 failure

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: state_apply

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

# EXACT PAYLOAD FIXATION

exact_payload_domain: state_apply
fixed_at: 20260417_164735

request_payload:
  required_fields:
    - apply_command_id
    - correlation_id
    - persona_id
    - pre_state
    - action_code
    - actor_id
    - change_payload

success_response:
  required_fields:
    - apply_command_id
    - correlation_id
    - persona_id
    - post_state
    - result_code
    - applied_at

reject_response:
  required_fields:
    - apply_command_id
    - correlation_id
    - persona_id
    - reject_code
    - reject_reason
    - rejected_at

fixed_transition_family:
  - allowed_transition
  - rejected_transition
  - conflict_blocked
  - retryable_failure
  - terminal_failure

mandatory_controls:
- pre_state must be explicit
- action_code must be explicit
- post_state must be explicit on success
- every mutation path must persist audit evidence

# EXACT CODE FAMILY FIXATION

exact_code_family_domain: state_apply
fixed_at: 20260417_164945

fixed_status_family:
- applied
- rejected
- conflict_blocked
- retrying
- terminal_failed

fixed_result_code_family:
- STATE_APPLY_SUCCESS
- STATE_APPLY_REJECTED
- STATE_APPLY_CONFLICT_BLOCKED
- STATE_APPLY_RETRY_SCHEDULED
- STATE_APPLY_TERMINAL_FAILED

fixed_reject_code_family:
- REJECT_INVALID_PRE_STATE
- REJECT_INVALID_ACTION_CODE
- REJECT_AUTHORITY_MISMATCH
- REJECT_ILLEGAL_TRANSITION

fixed_error_code_family:
- ERR_CONCURRENCY_CONFLICT
- ERR_INTERNAL_RETRYABLE
- ERR_INTERNAL_TERMINAL

rules:
- every allowed transition must map to one success code
- every blocked transition must map to one reject or conflict code
- retryable and terminal failures must remain distinguishable

# EXACT STATE ENUM AND TRANSITION FIXATION

exact_state_transition_domain: state_apply
fixed_at: 20260417_165940

pre_state_enum:
- draft_open
- draft_validating
- draft_blocked
- draft_publishable
- runtime_active
- runtime_suspended
- release_pending
- release_completed

action_enum:
- validate_draft
- block_draft
- mark_publishable
- publish_release
- suspend_runtime
- resume_runtime
- complete_release

post_state_enum:
- draft_validating
- draft_blocked
- draft_publishable
- release_completed
- runtime_suspended
- runtime_active

transition_table:
- draft_open + validate_draft -> draft_validating
- draft_validating + block_draft -> draft_blocked
- draft_validating + mark_publishable -> draft_publishable
- draft_publishable + publish_release -> release_completed
- runtime_active + suspend_runtime -> runtime_suspended
- runtime_suspended + resume_runtime -> runtime_active

transition_rules:
- any action not listed above must be rejected
- pre_state and action_code are mandatory on every apply request
- post_state is mandatory on success
- reject path must preserve original pre_state in audit evidence

# EXACT REQUEST RESPONSE EXAMPLES

exact_example_domain: state_apply
fixed_at: 20260417_174222

request_example:
  apply_command_id: apply_001
  correlation_id: corr_002
  persona_id: persona_001
  pre_state: draft_validating
  action_code: mark_publishable
  actor_id: actor_001
  change_payload:
    validation_result_id: vr_001

success_response_example:
  apply_command_id: apply_001
  correlation_id: corr_002
  persona_id: persona_001
  post_state: draft_publishable
  result_code: STATE_APPLY_SUCCESS
  applied_at: 2026-01-01T00:00:02Z

reject_response_example:
  apply_command_id: apply_001
  correlation_id: corr_002
  persona_id: persona_001
  reject_code: REJECT_ILLEGAL_TRANSITION
  reject_reason: invalid_action_for_pre_state
  rejected_at: 2026-01-01T00:00:02Z

# EXACT PERSISTENCE AND AUDIT FIXATION

exact_persistence_audit_domain: state_apply
fixed_at: 20260417_174751

persistence_touchpoints:
- pre_apply_audit_record
- truth_mutation_record
- post_apply_audit_record
- retry_schedule_record where applicable
- terminal_failure_record where applicable

storage_objects:
- persona_truth_state
- persona_state_transition_log
- persona_apply_command_log
- persona_retry_queue
- persona_audit_trace

audit_evidence_required_fields:
- apply_command_id
- correlation_id
- persona_id
- pre_state
- action_code
- post_state on success
- reject_code on rejection
- actor_id
- recorded_at

audit_rules:
- every allowed transition must emit transition evidence
- every rejection must preserve pre_state and reject reason
- mutation and audit must be trace-linked

# EXACT ACCEPTANCE AND DONE GATE FIXATION

exact_acceptance_domain: state_apply
fixed_at: 20260417_175108

acceptance_checklist:
- allowed transition succeeds with explicit post_state
- invalid pre_state is rejected with fixed reject_code
- illegal action_code is rejected with fixed reject_code
- concurrency conflict is surfaced as conflict_blocked or fixed conflict error
- every accepted mutation writes transition evidence
- every rejected mutation preserves pre_state in evidence

done_definition:
- pre_state enum is fixed
- action enum is fixed
- post_state enum is fixed
- transition table is fixed
- reject family is fixed
- persistence and audit linkage are fixed

implementation_gate:
- no implementation may accept action without pre_state
- no implementation may write truth mutation without audit trace
- no implementation may invent post_state outside fixed enum
