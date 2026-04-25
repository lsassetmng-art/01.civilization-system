# ============================================================
# WORLD PROGRESSION EXECUTION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_progression
document_id: 3960001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines world progression execution and proposal/apply separation.

## 2. Scope

This document covers:
- progression run
- input snapshot
- effect proposal
- apply result
- failure record

## 3. Canonical Source Of Truth

Progression run is not canonical world mutation by itself.

## 4. Exact Table Set

- world_progression_run
- progression_input_snapshot
- progression_effect_proposal
- progression_apply_result
- progression_failure_record

## 5. Exact Request / Response

Progression execution is explicit runtime or reviewed operator action.

## 6. Exact Command / Event

Typical events:
- world_progression.started
- world_progression.proposed
- world_progression.applied
- world_progression.failed

## 7. Authorization Boundary

Reviewed progression apply may require privileged operator authority.

## 8. State Machine

Progression states:
- PENDING
- RUNNING
- PROPOSAL_READY
- APPLYING
- APPLIED
- FAILED

## 9. Transaction Boundary

Proposal must exist before apply result.
Failed apply must preserve run trace.

## 10. Idempotency

Repeated execution for same progression input window must be safe.

## 11. Audit Trace

Reviewed progression apply or correction must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_WORLD_PROGRESSION_FAILED
- VALIDATION_PROGRESSION_INPUT_INVALID
- STATE_PROGRESSION_APPLY_FORBIDDEN

## 13. Observability

Run status, proposal status, and apply result must remain visible.

## 14. Failure / Recovery

- progression run is not canonical world mutation by itself
- proposal and apply result must be separated
- failed apply must preserve run trace
- replay must preserve progression identity

## 15. Acceptance Checklist

- proposal/apply split fixed
- run trace fixed
- replay safety fixed
