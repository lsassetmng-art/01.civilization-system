# ============================================================
# EVENT IDEMPOTENCY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 014.security
subdomain: 040.authorization
document_id: 12001404004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical event-consumer idempotency and duplicate reflection control.

## 2. Scope

Applies to event consumer processing and reflection safety.

## 3. Canonical Source Of Truth

Canonical event idempotency truth is defined in this document.

## 4. Exact Table Set

Required tables:

- event_idempotency
- source_event_reflection

## 5. Exact Request / Response

Not an external request/response authority.
This document governs internal event-consumer processing behavior.

## 6. Exact Command / Event

Each consumer must record event_id plus consumer_name.

## 7. Authorization Boundary

Consumer-side effects must still respect action scope
or reviewed system-side mutation path.

## 8. State Machine

Recommended event consumer outcome states:

- RECEIVED
- APPLIED
- NO_OP_DUPLICATE
- FAILED_RETRYABLE
- FAILED_FINAL

## 9. Transaction Boundary

Event idempotency check must occur before consumer side effect.

## 10. Idempotency

This document is the primary authority for consumer-side event idempotency.

## 11. Audit Trace

Consumer failure and duplicate no-op outcomes must remain traceable.

## 12. Error Code Binding

Typical codes include:

- EVENT_DUPLICATE_REFLECTION_BLOCKED
- EVENT_CONSUMER_RETRYABLE_FAILURE
- EVENT_CONSUMER_FINAL_FAILURE

## 13. Observability

Repeated delivery and duplicate suppression must remain visible.

## 14. Failure / Recovery

- Replayed event must not reapply side effect
- Duplicate consume must resolve as no-op success
- Reflection into original source aggregate is prohibited unless explicitly allowed
- Consumer failure must preserve event traceability

## 15. Acceptance Checklist

- consumer idempotency fixed
- duplicate no-op rule fixed
- reflection block fixed
- traceability fixed
