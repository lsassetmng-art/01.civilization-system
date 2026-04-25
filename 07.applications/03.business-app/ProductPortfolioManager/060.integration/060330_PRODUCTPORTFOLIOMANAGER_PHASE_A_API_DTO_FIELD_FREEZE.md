# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
portfolio cockpit and prioritization exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_portfolio_cockpit_query:
  route: POST /api/v1/product-portfolio-manager/portfolio-cockpit/query
  request_fields:
    - portfolioId: uuid string, required
    - timezone: string, required
    - includePrioritizationExceptions: boolean, required
    - includeManagementAttention: boolean, required
    - includeDecisionSupportReadiness: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - portfolioId: uuid string, required
    - portfolioTitle: string, required
    - healthSummaryMessage: string, required
    - prioritizationExceptionItems: array, required
    - managementAttentionItems: array, required
    - decisionSupportItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- portfolioControlTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- portfolioStateCode: string, required
- effectiveAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_scenario_exception_review_query:
  route: POST /api/v1/product-portfolio-manager/scenario-exception-review/query
  request_fields:
    - portfolioId: uuid string, required
    - includeResolved: boolean, required
    - includeThresholdBreaches: boolean, required
    - includeDecisionSupportBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - portfolioId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedScenarioId: uuid string, nullable
- relatedExceptionId: uuid string, nullable
- relatedDecisionSupportBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- portfolioStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- effectiveAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- portfolioStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
