# ============================================================
# EVENT EMISSION AND REFLECTION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 021.event
document_id: 1200210008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the difference between event emission, event delivery,
and reflected state change.

## 2. Scope

This document covers:
- emitted canonical fact
- delivery trace
- reflection result
- replay safety

## 3. Canonical Source Of Truth

Emitted event fact is canonical event truth.
Reflection result is related but separate.

## 4. Exact Table Set

- emitted_event
- event_delivery_trace
- event_reflection_result

## 5. Exact Request / Response

Event reflection outcomes must be explicitly represented.

## 6. Exact Command / Event

- event emission records canonical fact
- event delivery records transport and receipt
- reflection result records target aggregate and outcome

## 7. Authorization Boundary

Reflected state mutation must still pass target-domain authority checks.

## 8. State Machine

Recommended reflection outcomes:
- PENDING
- APPLIED
- NO_OP
- FAILED_RETRYABLE
- FAILED_FINAL

## 9. Transaction Boundary

Failed reflection must not erase emitted fact.

## 10. Idempotency

Replay must preserve original emission identity.

## 11. Audit Trace

Reviewed event repair and forced replay must be auditable.

## 12. Error Code Binding

Typical codes:
- EVENT_REFLECTION_TARGET_INVALID
- EVENT_DUPLICATE_REFLECTION_BLOCKED
- EVENT_REFLECTION_FINAL_FAILURE

## 13. Observability

Emission, delivery, and reflection must remain separately visible.

## 14. Failure / Recovery

- emitted event does not equal reflected mutation
- failed reflection must preserve emitted fact
- duplicate reflection must not duplicate side effect

## 15. Acceptance Checklist

- emission/reflection split fixed
- exact records fixed
- replay rule fixed
- failure preservation fixed
