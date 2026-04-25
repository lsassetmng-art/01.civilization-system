# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO_COCKPIT_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-cockpit-payload

purpose:
Fixes the exact payload family for the portfolio cockpit surface.

endpoint:
- POST /api/v1/product-portfolio-manager/portfolio-cockpit/query

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
- portfolioControlTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- portfolioStateCode
- effectiveAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
