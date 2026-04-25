# ============================================================
# COMPANY BUILDER API CONTRACT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.company_builder
document_id: 1201520002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact API contract for company builder draft creation,
editing, validation, approval, and publication.

## 2. Scope

This document covers staged company core creation only.

## 3. Canonical Source Of Truth

Company builder draft truth is staged truth.
Active company core truth is created by publish and remains separate.

## 4. Exact Table Set

- company_builder_draft
- company_builder_common_profile
- company_builder_type_profile
- company_builder_validation_result
- company_publish_artifact
- company_revision_link

## 5. Exact Request / Response

Exact endpoints:

- POST /api/v1/company-builder/drafts
- GET /api/v1/company-builder/drafts/{draft_id}
- PUT /api/v1/company-builder/drafts/{draft_id}/common
- PUT /api/v1/company-builder/drafts/{draft_id}/type-specific
- POST /api/v1/company-builder/drafts/{draft_id}/validate
- POST /api/v1/company-builder/drafts/{draft_id}/request-approval
- POST /api/v1/company-builder/drafts/{draft_id}/approve
- POST /api/v1/company-builder/drafts/{draft_id}/publish

## 6. Exact Command / Event

Typical commands:
- company_builder.create_draft
- company_builder.save_common
- company_builder.save_type_specific
- company_builder.validate
- company_builder.request_approval
- company_builder.approve
- company_builder.publish

Typical events:
- company_builder.draft_created
- company_builder.common_saved
- company_builder.type_specific_saved
- company_builder.validation_failed
- company_builder.approved
- company_builder.published

## 7. Authorization Boundary

Company builder mutation must use company-builder-scoped action scopes.

## 8. State Machine

See dedicated company builder state machine document.

## 9. Transaction Boundary

Publish creates company core artifact only.
Company site opening is outside this contract.

## 10. Idempotency

Repeated publish request for same approved draft must be safe or conflict-rejected.

## 11. Audit Trace

Approval, publish, reject, and supersede must be audited.

## 12. Error Code Binding

Typical codes:
- VALIDATION_COMPANY_TYPE_MISSING
- VALIDATION_COMPANY_TYPE_PROFILE_INCOMPLETE
- STATE_COMPANY_BUILDER_PUBLISH_FORBIDDEN

## 13. Observability

Company builder staged progress and publish lineage must remain visible.

## 14. Failure / Recovery

- company type is mandatory
- type-specific payload is mandatory before publish
- publish creates company core only
- site opening is outside this builder contract

## 15. Acceptance Checklist

- company builder endpoint set fixed
- staged-only rule fixed
- core/site split fixed
