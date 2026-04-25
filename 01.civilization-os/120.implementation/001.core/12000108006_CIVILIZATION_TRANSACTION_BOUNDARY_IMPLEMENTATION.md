# ============================================================
# CIVILIZATION TRANSACTION BOUNDARY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 001.core
document_id: 12000108006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical transaction order for synchronous mutation and
asynchronous worker-driven execution.

## 2. Scope

Applies to mutation-bearing implementation flows.

## 3. Canonical Source Of Truth

Canonical transaction order truth is defined in this document.

## 4. Exact Synchronous Mutation Order

1. validate request envelope
2. resolve actor and session
3. resolve authorization
4. load canonical current state
5. validate domain rules
6. persist canonical mutation
7. write audit trace
8. write outbox event
9. commit
10. dispatch async work if required

## 5. Exact Worker Order

1. receive inbox or queue item
2. validate envelope
3. check event idempotency
4. lock processing scope
5. apply allowed effect
6. write audit if mutation occurs
7. mark completion or dead-letter

## 6. Authorization Boundary

Authorization must be resolved before canonical write.

## 7. State Machine

Worker lifecycle is managed separately; this document fixes ordering rules.

## 8. Transaction Boundary

This document is itself the transaction-boundary authority.

## 9. Idempotency

Event idempotency and request idempotency must be checked before
non-idempotent side effects.

## 10. Audit Trace

Successful mutation may not skip audit trace write.

## 11. Error Code Binding

Typical codes include:

- CONFLICT_IDEMPOTENCY_IN_PROGRESS
- RUNTIME_EXECUTION_MODE_FORBIDDEN
- INTEGRATION_OUTBOX_WRITE_MISSING

## 12. Observability

Commit, retry, and dead-letter state must remain operator-visible.

## 13. Failure / Recovery

- pre-commit failure => rollback
- post-commit dispatch failure => retry dispatch
- non-retryable consumer failure => dead-letter
- unresolved divergence => reconciliation required

## 14. Prohibited Order

- publish event before commit
- mutate projection as source of truth
- skip audit on successful mutation
- commit mutation without outbox when event-bearing
- silently ignore partial write failure

## 15. Acceptance Checklist

- sync order fixed
- worker order fixed
- prohibited order fixed
- rollback/retry/dead-letter fixed
