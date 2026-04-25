# ============================================================
# PROJECTFLOW PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: ProjectFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
project cockpit and risk dependency review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_project_cockpit_query:
  route: POST /api/v1/project-flow/project-cockpit/query
  request_fields:
    - projectId: uuid string, required
    - timezone: string, required
    - includeBlockedItems: boolean, required
    - includeAtRiskItems: boolean, required
    - includeUpcomingMilestones: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - projectId: uuid string, required
    - projectTitle: string, required
    - healthSummaryMessage: string, required
    - blockedItems: array, required
    - atRiskItems: array, required
    - upcomingMilestones: array, required
    - ownerEscalationItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- projectDeliveryTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- deliveryStateCode: string, required
- dueAt: ISO-8601 string, nullable
- scheduledStartAt: ISO-8601 string, nullable
- scheduledEndAt: ISO-8601 string, nullable
- riskLevelCode: string, nullable
- blockerPresent: boolean, required
- ownerUserId: uuid string, nullable
- escalationRequired: boolean, required

endpoint_02_risk_dependency_review_query:
  route: POST /api/v1/project-flow/risk-dependency-review/query
  request_fields:
    - projectId: uuid string, required
    - riskLevelFilter: string array, optional
    - includeResolved: boolean, required
    - includeDependencies: boolean, required
    - includeDecisionPending: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - projectId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedMilestoneId: uuid string, nullable
- relatedDependencyId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- deliveryStateCode: string, required
- riskLevelCode: string, nullable
- blockerPresent: boolean, required
- ownerUserId: uuid string, nullable
- decisionPending: boolean, required
- resolved: boolean, required
- dueAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- deliveryStateCode is a text code, not localized label
- riskLevelCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
