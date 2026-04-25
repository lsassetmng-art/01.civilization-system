# ============================================================
# ESTIMATECREATOR PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: EstimateCreator
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
estimate cockpit and revision approval review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_estimate_cockpit_query:
  route: POST /api/v1/estimate-creator/estimate-cockpit/query
  request_fields:
    - estimateId: uuid string, required
    - timezone: string, required
    - includePendingApproval: boolean, required
    - includeConversionBlockers: boolean, required
    - includeRecentRevisions: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - estimateId: uuid string, required
    - estimateTitle: string, required
    - healthSummaryMessage: string, required
    - pendingApprovalItems: array, required
    - conversionBlockerItems: array, required
    - recentRevisionItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- estimateCommercialTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- commercialStateCode: string, required
- validUntilAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_revision_approval_review_query:
  route: POST /api/v1/estimate-creator/revision-approval-review/query
  request_fields:
    - estimateId: uuid string, required
    - includeResolved: boolean, required
    - includePricingExceptions: boolean, required
    - includeApprovalPending: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - estimateId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedRevisionId: uuid string, nullable
- relatedApprovalId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- commercialStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- validUntilAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- commercialStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
