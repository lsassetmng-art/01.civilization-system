# ============================================================
# QUICKFORECAST SCENARIO EXCEPTION REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: QuickForecast
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: scenario-exception-review-payload

purpose:
Fixes the exact payload family for scenario and exception review.

endpoint:
- POST /api/v1/quick-forecast/scenario-exception-review/query

request_fields:
- forecastId: uuid string, required
- includeResolved: boolean, required
- includeThresholdBreaches: boolean, required
- includeDecisionSupportBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- forecastId: uuid string, required
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
- forecastStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- effectiveAt
