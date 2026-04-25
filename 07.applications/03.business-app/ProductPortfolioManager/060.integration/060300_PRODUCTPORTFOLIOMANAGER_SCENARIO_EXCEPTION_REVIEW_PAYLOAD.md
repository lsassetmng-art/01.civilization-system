# ============================================================
# PRODUCTPORTFOLIOMANAGER SCENARIO_EXCEPTION_REVIEW_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: scenario-exception-review-payload

purpose:
Fixes the exact payload family for prioritization and exception review.

endpoint:
- POST /api/v1/product-portfolio-manager/scenario-exception-review/query

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
- reviewItemId
- relatedScenarioId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- portfolioStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- effectiveAt
