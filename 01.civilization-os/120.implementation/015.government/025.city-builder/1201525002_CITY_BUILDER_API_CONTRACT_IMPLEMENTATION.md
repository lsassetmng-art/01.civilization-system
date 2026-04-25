# ============================================================
# CITY BUILDER API CONTRACT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.city_builder
document_id: 1201525002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact API contract for city builder staged creation,
validation, publication, and activation.

## 2. Scope

This document covers staged city creation and configuration.

## 3. Canonical Source Of Truth

City builder draft truth is staged truth.
Active city truth is separate and reached only through publish and activation.

## 4. Exact Table Set

- city_builder_draft
- city_builder_identity
- city_builder_territory
- city_builder_district_bundle
- city_builder_zoning_bundle
- city_builder_public_facility_layout
- city_builder_validation_result
- city_publish_artifact
- city_activation_link

## 5. Exact Request / Response

Exact endpoints:

- POST /api/v1/city-builder/drafts
- GET /api/v1/city-builder/drafts/{draft_id}
- PUT /api/v1/city-builder/drafts/{draft_id}/identity
- PUT /api/v1/city-builder/drafts/{draft_id}/territory
- PUT /api/v1/city-builder/drafts/{draft_id}/districts
- PUT /api/v1/city-builder/drafts/{draft_id}/zoning
- PUT /api/v1/city-builder/drafts/{draft_id}/public-facilities
- POST /api/v1/city-builder/drafts/{draft_id}/validate
- POST /api/v1/city-builder/drafts/{draft_id}/request-approval
- POST /api/v1/city-builder/drafts/{draft_id}/approve
- POST /api/v1/city-builder/drafts/{draft_id}/publish
- POST /api/v1/city-builder/drafts/{draft_id}/activate

## 6. Exact Command / Event

Typical commands:
- city_builder.create_draft
- city_builder.save_section
- city_builder.validate
- city_builder.request_approval
- city_builder.approve
- city_builder.publish
- city_builder.activate

Typical events:
- city_builder.draft_created
- city_builder.validation_failed
- city_builder.approved
- city_builder.published
- city_builder.activated

## 7. Authorization Boundary

City builder mutation must use city-builder-scoped action scopes.

## 8. State Machine

See dedicated city builder state machine document.

## 9. Transaction Boundary

Activation requires active parent nation and published city artifact.

## 10. Idempotency

Repeated publish or activate requests for same approved revision
must be safe or conflict-rejected.

## 11. Audit Trace

Approval, publish, activate, and supersede must be audited.

## 12. Error Code Binding

Typical codes:
- VALIDATION_CITY_TERRITORY_INVALID
- VALIDATION_CITY_ZONING_CONFLICT
- STATE_CITY_BUILDER_ACTIVATION_FORBIDDEN

## 13. Observability

City builder staged status and activation lineage must remain visible.

## 14. Failure / Recovery

- city territory must fit parent nation territory
- district/zoning mismatch must fail closed
- activation requires active parent nation

## 15. Acceptance Checklist

- city builder endpoint set fixed
- territory guard fixed
- publish/activate split fixed
