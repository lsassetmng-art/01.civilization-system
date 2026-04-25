# ============================================================
# TREATY LIFECYCLE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.fiscal_and_treaty
document_id: 1201580002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical treaty lifecycle from draft through activation,
suspension, termination, and supersede.

## 2. Scope

This document covers:
- treaty draft
- negotiation
- ratification
- activation
- suspension
- termination
- supersede

## 3. Canonical Source Of Truth

Treaty truth remains in treaty-owned canonical records.
Fiscal execution truth remains outside this document.

## 4. Exact Table Set

- treaty_draft
- treaty_negotiation
- treaty_ratification
- treaty_activation
- treaty_suspension
- treaty_termination
- treaty_supersede_link

## 5. Exact Request / Response

Treaty state changes must be explicit treaty operations.

## 6. Exact Command / Event

Typical events:
- treaty.drafted
- treaty.negotiating
- treaty.ratified
- treaty.activated
- treaty.suspended
- treaty.terminated
- treaty.superseded

## 7. Authorization Boundary

Ratification, activation, suspension, and termination require government authority.

## 8. State Machine

Allowed treaty states:
- DRAFT
- NEGOTIATING
- RATIFICATION_PENDING
- RATIFIED
- ACTIVE
- SUSPENDED
- TERMINATED
- SUPERSEDED

## 9. Transaction Boundary

Ratified treaty does not become active until activation is committed.

## 10. Idempotency

Repeated activation/termination for same treaty revision must be safe or conflict-rejected.

## 11. Audit Trace

Ratification, activation, suspension, termination, and supersede must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_TREATY_ACTIVATION_FORBIDDEN
- VALIDATION_TREATY_RATIFICATION_MISSING
- CONFLICT_TREATY_SUCCESSOR_EXISTS

## 13. Observability

Treaty lifecycle status and lineage must remain visible.

## 14. Failure / Recovery

- ratified is not yet active
- active treaty must have activation event
- termination must preserve historical trace
- supersede must link predecessor treaty

## 15. Acceptance Checklist

- treaty states fixed
- activation gate fixed
- historical trace fixed
- supersede linkage fixed
