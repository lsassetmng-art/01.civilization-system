# ============================================================
# BUILDER SESSION AND DRAFT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 022.builder
document_id: 1200220008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the common session and draft structure shared by all builder families.

## 2. Scope

This document covers:
- builder session
- builder draft
- draft revision
- draft lock
- builder timeline

## 3. Canonical Source Of Truth

Builder session and draft truth is defined here.
It does not activate runtime truth by itself.

## 4. Exact Table Set

- builder_session
- builder_draft
- builder_draft_revision
- builder_draft_lock
- builder_timeline_entry

## 5. Exact Request / Response

Builder save, validate, review, reject, and publish-entry operations
must reference builder session and draft explicitly.

## 6. Exact Command / Event

Typical commands:
- builder_session.create
- builder_draft.save
- builder_draft.validate
- builder_draft.request_review

Typical events:
- builder_session.created
- builder_draft.saved
- builder_draft.validation_failed
- builder_draft.awaiting_review

## 7. Authorization Boundary

Builder mutation must respect staged builder action scopes.

## 8. State Machine

Builder session/draft states:
- CREATED
- EDITING
- VALIDATING
- VALIDATION_FAILED
- AWAITING_REVIEW
- APPROVED
- PUBLISHING
- PUBLISHED
- REJECTED
- SUPERSEDED

## 9. Transaction Boundary

Draft mutation must commit staged truth before timeline projection update.

## 10. Idempotency

Repeated staged save must be safe.

## 11. Audit Trace

Reviewed rejection and approval must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_BUILDER_DRAFT_INCOMPLETE
- STATE_BUILDER_PUBLISH_FORBIDDEN
- ACCESS_BUILDER_REVIEW_FORBIDDEN

## 13. Observability

Builder staged progress must remain traceable.

## 14. Failure / Recovery

- draft save does not activate runtime state
- publish requires validated approved draft
- supersede must preserve lineage

## 15. Acceptance Checklist

- builder session fixed
- draft structure fixed
- staged-only rule fixed
- lineage rule fixed
