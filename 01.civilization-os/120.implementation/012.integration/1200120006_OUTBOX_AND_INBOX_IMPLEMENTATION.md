# ============================================================
# OUTBOX AND INBOX
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 012.integration
document_id: 1200120006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical outbox, inbox, and dead-letter handling for event-bearing
mutation and event-driven integration.

## 2. Scope

Applies to event-bearing canonical mutation and event consumer execution.

## 3. Canonical Source Of Truth

Canonical outbox/inbox/dead-letter handling truth is defined in this document.

## 4. Exact Table Set

Required tables:

- outbox_event
- inbox_event
- dead_letter_event

Dead-letter minimum fields:

- event_id
- consumer_name
- failure_code
- retry_count
- first_failed_at
- last_failed_at
- last_error_summary
- repair_status

## 5. Exact Request / Response

Not an external API authority; governs event dispatch and receive flow.

## 6. Exact Command / Event

Outbox carries canonical post-commit event delivery units.
Inbox carries consumer-side receipt and processing truth.

## 7. Authorization Boundary

Integration delivery does not replace authorization for resulting mutations.

## 8. State Machine

Recommended processing states include:

- PENDING_DISPATCH
- DISPATCHED
- RECEIVED
- PROCESSING
- COMPLETED
- DEAD_LETTERED

## 9. Transaction Boundary

- outbox is written inside canonical transaction
- outbox is dispatched only after commit
- inbox processing checks event idempotency before effect

## 10. Idempotency

Repeated delivery must not duplicate effect.

## 11. Audit Trace

Repair and replay must remain traceable.

## 12. Error Code Binding

Typical codes include:

- INTEGRATION_OUTBOX_WRITE_MISSING
- INTEGRATION_INBOX_PROCESSING_FAILED
- EVENT_DUPLICATE_REFLECTION_BLOCKED

## 13. Observability

Processing status must remain visible to operator tooling.

## 14. Failure / Recovery

- dispatch failure => retry
- repeated delivery => no duplicate effect
- non-retryable failure => dead-letter
- manual repair path required

## 15. Acceptance Checklist

- outbox fixed
- inbox fixed
- dead-letter fixed
- dispatch order fixed
