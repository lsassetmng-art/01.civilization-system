# ============================================================
# COMMUNICATION THREAD POST AND NOTICE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: communication
document_id: 1204900002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines thread, post, official notice, delivery projection, and permission binding.

## 2. Scope

This document covers:
- thread
- post
- official notice
- delivery projection
- permission binding

## 3. Canonical Source Of Truth

Communication truth remains distinct from organization truth and notification projection.

## 4. Exact Table Set

- communication_thread
- communication_post
- official_notice
- notice_delivery_projection
- communication_permission_binding

## 5. Exact Request / Response

Thread/post/notice creation and visibility change are explicit actions.

## 6. Exact Command / Event

Typical events:
- communication_thread.created
- communication_post.created
- official_notice.published
- notice_delivery.projected

## 7. Authorization Boundary

Posting and notice publication require communication-side authority.

## 8. State Machine

Post states:
- DRAFT
- PUBLISHED
- HIDDEN
- SUPERSEDED

Notice states:
- DRAFT
- PUBLISHED
- DELIVERED
- SUPERSEDED

## 9. Transaction Boundary

Official notice publication must commit before delivery projection.

## 10. Idempotency

Repeated post or notice publish for same revision must be safe.

## 11. Audit Trace

Official notice publication and reviewed hide/remove must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_COMMUNICATION_POST_INVALID
- ACCESS_NOTICE_PUBLICATION_FORBIDDEN
- STATE_THREAD_MUTATION_FORBIDDEN

## 13. Observability

Thread posture, notice posture, and delivery projection posture must remain visible.

## 14. Failure / Recovery

- thread and official notice are separate
- post visibility must be explicit
- delivery projection is not source of truth

## 15. Acceptance Checklist

- thread/notice split fixed
- visibility rule fixed
- projection boundary fixed
