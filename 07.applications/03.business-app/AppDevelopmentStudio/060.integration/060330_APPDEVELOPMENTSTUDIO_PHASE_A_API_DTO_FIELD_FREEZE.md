# ============================================================
# APPDEVELOPMENTSTUDIO PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: AppDevelopmentStudio
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
studio cockpit and implementation exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_studio_cockpit_query:
  route: POST /api/v1/app-development-studio/studio-cockpit/query
  request_fields:
    - studioWorkId: uuid string, required
    - timezone: string, required
    - includeImplementationExceptions: boolean, required
    - includeBuildBlockers: boolean, required
    - includeReleaseReadiness: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - studioWorkId: uuid string, required
    - studioTitle: string, required
    - healthSummaryMessage: string, required
    - implementationExceptionItems: array, required
    - buildBlockerItems: array, required
    - releaseReadinessItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- developmentControlTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- developmentStateCode: string, required
- dueAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_implementation_exception_review_query:
  route: POST /api/v1/app-development-studio/implementation-exception-review/query
  request_fields:
    - studioWorkId: uuid string, required
    - includeResolved: boolean, required
    - includeBuildBlockers: boolean, required
    - includeReleaseBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - studioWorkId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedReviewId: uuid string, nullable
- relatedExceptionId: uuid string, nullable
- relatedReleaseBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- developmentStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- dueAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- developmentStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
