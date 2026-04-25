# ============================================================
# SETTLEMENT LEDGER AND RELEASE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.marketplace
document_id: 3920008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines settlement ledger truth, payout hold, release gate,
and settlement closure.

## 2. Scope

This document covers:
- settlement case
- ledger entry
- payout hold
- payout release
- cooldown gate
- closure

## 3. Canonical Source Of Truth

Settlement ledger truth is distinct from payment truth and receipt truth.

## 4. Exact Table Set

- settlement_case
- settlement_ledger_entry
- payout_hold
- payout_release
- cooldown_gate
- settlement_closure

## 5. Exact Request / Response

Settlement release and closure are explicit operations.

## 6. Exact Command / Event

Typical commands:
- settlement.open
- payout.hold
- payout.release
- settlement.close

Typical events:
- settlement.opened
- payout.held
- payout.released
- settlement.closed

## 7. Authorization Boundary

Settlement release requires settlement-scoped authority and reviewed action where configured.

## 8. State Machine

Allowed settlement states:
- PAYMENT_CONFIRMED
- RECEIPT_PENDING
- RECEIPT_CONFIRMED
- PAYOUT_HOLD
- PAYOUT_READY
- PAYOUT_RELEASED
- REFUND_REVIEW
- REFUND_PROCESSED
- DISPUTE_OPEN
- SETTLEMENT_CLOSED

## 9. Transaction Boundary

Ledger entry must be committed before payout release is considered complete.

## 10. Idempotency

Repeated release for same settlement target must be safe or conflict-rejected.

## 11. Audit Trace

Payout release, settlement closure, and reviewed override must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_PAYOUT_RELEASE_FORBIDDEN
- VALIDATION_SETTLEMENT_GATE_FAILED
- CONFLICT_SETTLEMENT_RELEASE_DUPLICATE

## 13. Observability

Settlement posture, gate result, and ledger effects must remain visible.

## 14. Failure / Recovery

- payment, payout hold, payout release, and closure are distinct
- ledger entry is canonical settlement truth
- payout release requires gate pass
- unresolved dispute blocks release

## 15. Acceptance Checklist

- settlement ledger fixed
- payout gate fixed
- release/closure split fixed
