# ============================================================
# NATION BUILDER API CONTRACT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.nation_builder
document_id: 1201510002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact API contract for nation builder draft creation,
editing, validation, approval request, publication, and activation.

## 2. Scope

This document covers:
- nation draft creation
- staged updates
- validation
- approval request
- approval
- publish
- activate

## 3. Canonical Source Of Truth

Nation builder staged truth remains in nation-builder-owned draft records.
Active nation truth is separate and may only be reached through publish and activation.

## 4. Exact Table Set

- nation_builder_draft
- nation_builder_draft_revision
- nation_builder_validation_result
- nation_builder_approval_request
- nation_publish_artifact
- nation_activation_link

## 5. Exact Request / Response

Exact endpoints:

- POST /api/v1/nation-builder/drafts
- GET /api/v1/nation-builder/drafts/{draft_id}
- PUT /api/v1/nation-builder/drafts/{draft_id}/identity
- PUT /api/v1/nation-builder/drafts/{draft_id}/territory
- PUT /api/v1/nation-builder/drafts/{draft_id}/regime
- PUT /api/v1/nation-builder/drafts/{draft_id}/zoning
- PUT /api/v1/nation-builder/drafts/{draft_id}/market-tier
- PUT /api/v1/nation-builder/drafts/{draft_id}/public-systems
- POST /api/v1/nation-builder/drafts/{draft_id}/validate
- POST /api/v1/nation-builder/drafts/{draft_id}/request-approval
- POST /api/v1/nation-builder/drafts/{draft_id}/approve
- POST /api/v1/nation-builder/drafts/{draft_id}/publish
- POST /api/v1/nation-builder/drafts/{draft_id}/activate

## 6. Exact Command / Event

Typical commands:
- nation_builder.create_draft
- nation_builder.save_section
- nation_builder.validate
- nation_builder.request_approval
- nation_builder.approve
- nation_builder.publish
- nation_builder.activate

Typical events:
- nation_builder.draft_created
- nation_builder.section_saved
- nation_builder.validation_failed
- nation_builder.awaiting_approval
- nation_builder.approved
- nation_builder.published
- nation_builder.activated

## 7. Authorization Boundary

Nation builder mutation must use nation builder action scopes.
Approval, publish, and activation require reviewed authority where applicable.

## 8. State Machine

See dedicated nation builder state machine document.

## 9. Transaction Boundary

Publish must create immutable artifact before activation.
Activation must not occur from non-published draft state.

## 10. Idempotency

Repeated publish or activation requests for same approved revision
must be safe or conflict-rejected.

## 11. Audit Trace

Approval, publish, reject, supersede, and activate must be audited.

## 12. Error Code Binding

Typical codes:
- VALIDATION_NATION_TEMPLATE_INCOMPLETE
- STATE_NATION_BUILDER_PUBLISH_FORBIDDEN
- ACCESS_NATION_BUILDER_APPROVAL_FORBIDDEN

## 13. Observability

Draft status, approval status, and publish lineage must be visible.

## 14. Failure / Recovery

- draft update must remain staged
- validate must not activate
- approval request must follow validation pass
- publish must create immutable artifact
- activate must target published artifact only

## 15. Acceptance Checklist

- endpoint set fixed
- staged-only rule fixed
- publish/activate split fixed
