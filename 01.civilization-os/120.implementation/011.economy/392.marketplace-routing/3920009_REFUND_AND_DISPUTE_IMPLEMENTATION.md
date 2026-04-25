# ============================================================
# REFUND AND DISPUTE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.marketplace
document_id: 3920009
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines refund and dispute as explicit first-class marketplace workflows.

## 2. Scope

This document covers:
- refund case
- refund decision
- refund processing
- dispute case
- dispute evidence
- dispute resolution

## 3. Canonical Source Of Truth

Refund truth and dispute truth are distinct.
Neither is identical to cancellation.

## 4. Exact Table Set

- refund_case
- refund_decision
- refund_processing
- dispute_case
- dispute_evidence
- dispute_resolution

## 5. Exact Request / Response

Refund request and dispute opening are explicit operations.

## 6. Exact Command / Event

Typical commands:
- refund.request
- refund.approve
- refund.process
- dispute.open
- dispute.resolve

Typical events:
- refund.requested
- refund.approved
- refund.processed
- dispute.opened
- dispute.resolved

## 7. Authorization Boundary

Refund and dispute resolution require reviewed authority where configured.

## 8. State Machine

Refund and dispute maintain separate workflow surfaces.

## 9. Transaction Boundary

Approved refund must commit settlement ledger effect before closure.

## 10. Idempotency

Repeated refund or dispute resolution for same case must be safe or conflict-rejected.

## 11. Audit Trace

Refund decision and dispute resolution must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_REFUND_REQUEST_INVALID
- STATE_DISPUTE_RESOLUTION_FORBIDDEN
- CONFLICT_REFUND_ALREADY_PROCESSED

## 13. Observability

Refund posture, dispute posture, and resolution lineage must remain visible.

## 14. Failure / Recovery

- refund is not cancellation
- dispute is not refund
- approved refund must write settlement ledger effect
- dispute outcome must link to release or refund action

## 15. Acceptance Checklist

- refund/dispute split fixed
- ledger effect fixed
- resolution linkage fixed
