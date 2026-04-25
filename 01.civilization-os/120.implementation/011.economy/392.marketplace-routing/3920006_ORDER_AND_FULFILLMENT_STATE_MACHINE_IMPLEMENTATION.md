# ============================================================
# ORDER AND FULFILLMENT STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.marketplace
document_id: 3920006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines order progression and fulfillment progression as separate but linked truths.

## 2. Scope

This document covers:
- order state
- fulfillment state
- delivery and pickup posture
- failure and return posture

## 3. Canonical Source Of Truth

Order truth and fulfillment truth must not collapse into one status.

## 4. Exact Table Set

- marketplace_order
- fulfillment_job
- fulfillment_state_history
- shipment_tracking_ref
- pickup_handoff_ref

## 5. Exact Request / Response

Typical endpoints:
- POST /api/v1/orders/{order_id}/start-fulfillment
- POST /api/v1/fulfillment/{job_id}/mark-shipped
- POST /api/v1/fulfillment/{job_id}/mark-delivered
- POST /api/v1/fulfillment/{job_id}/mark-ready-for-pickup
- POST /api/v1/fulfillment/{job_id}/mark-picked-up

## 6. Exact Command / Event

Typical events:
- fulfillment.started
- fulfillment.shipped
- fulfillment.delivered
- fulfillment.ready_for_pickup
- fulfillment.pickup_completed
- fulfillment.failed
- fulfillment.return_requested
- fulfillment.returned

## 7. Authorization Boundary

Fulfillment mutation requires fulfillment-scoped authority.

## 8. State Machine

Order states:
- CREATED
- PAYMENT_PENDING
- PAYMENT_CONFIRMED
- FULFILLMENT_IN_PROGRESS
- RECEIPT_PENDING
- SETTLEMENT_PENDING
- CLOSED
- CANCELLED

Fulfillment states:
- PREPARING
- SHIPMENT_PENDING
- SHIPPED
- DELIVERED
- READY_FOR_PICKUP
- PICKUP_COMPLETED
- FULFILLMENT_FAILED
- RETURN_PENDING
- RETURNED

## 9. Transaction Boundary

Fulfillment transitions must commit before receipt or settlement depends on them.

## 10. Idempotency

Repeated shipment/delivery mutation for same fulfillment step must be safe.

## 11. Audit Trace

Reviewed fulfillment repair and exception handling must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_FULFILLMENT_TRANSITION_FORBIDDEN
- VALIDATION_FULFILLMENT_HANDOFF_INVALID
- STATE_ORDER_SETTLEMENT_PENDING_BLOCKED

## 13. Observability

Order state and fulfillment state must remain separately visible.

## 14. Failure / Recovery

- order state and fulfillment state are separate
- payment_confirmed does not equal shipped
- fulfillment_failed does not equal payment_failed
- receipt_pending may exist after delivered

## 15. Acceptance Checklist

- order/fulfillment split fixed
- state machines fixed
- failure split fixed
