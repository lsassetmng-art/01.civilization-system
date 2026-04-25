# ============================================================
# REQUEST IDEMPOTENCY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 014.security
subdomain: 040.authorization
document_id: 12001404003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical request idempotency behavior for synchronous mutation entry.

## 2. Scope

Applies to mutation-bearing synchronous request flows.

## 3. Canonical Source Of Truth

Canonical request idempotency truth is defined in this document.

## 4. Exact Table Set

Required table:

- request_idempotency

Required columns:

- idempotency_key
- request_id
- actor_ref
- action_scope
- aggregate_type
- aggregate_id
- request_hash
- execution_status
- response_snapshot_ref
- started_at
- completed_at
- expires_at

## 5. Exact Request / Response

Mutation endpoints must require idempotency_key.

## 6. Exact Command / Event

Idempotency linkage must remain visible from request through resulting command/event.

## 7. Authorization Boundary

Idempotency does not replace authorization.
Authorization is still required on every accepted request.

## 8. State Machine

execution_status values:

- RECEIVED
- IN_PROGRESS
- SUCCEEDED
- FAILED_FINAL
- EXPIRED

## 9. Transaction Boundary

Idempotency check occurs before non-idempotent canonical mutation.

## 10. Idempotency

This document is the primary authority for synchronous request idempotency.

## 11. Audit Trace

Replay and conflict outcomes must remain auditable.

## 12. Error Code Binding

Typical codes include:

- CONFLICT_IDEMPOTENCY_IN_PROGRESS
- CONFLICT_IDEMPOTENCY_HASH_MISMATCH
- VALIDATION_IDEMPOTENCY_KEY_MISSING

## 13. Observability

Idempotency replay and conflict must remain operator-visible.

## 14. Failure / Recovery

- Same key + same hash + success => replay stored result
- Same key + same hash + in progress => reject as conflict
- Same key + different hash => reject
- Mutation endpoint without idempotency_key => invalid

## 15. Acceptance Checklist

- table fixed
- columns fixed
- replay rule fixed
- conflict rule fixed
