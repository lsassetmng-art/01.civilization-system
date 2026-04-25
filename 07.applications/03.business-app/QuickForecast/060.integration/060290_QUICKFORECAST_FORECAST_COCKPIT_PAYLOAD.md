# ============================================================
# QUICKFORECAST FORECAST COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: QuickForecast
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-cockpit-payload

purpose:
Fixes the exact payload family for the forecast cockpit surface.

endpoint:
- POST /api/v1/quick-forecast/forecast-cockpit/query

request_fields:
- forecastId: uuid string, required
- timezone: string, required
- includeScenarioExceptions: boolean, required
- includeManagementAttention: boolean, required
- includeDecisionSupportReadiness: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- forecastId: uuid string, required
- forecastTitle: string, required
- healthSummaryMessage: string, required
- scenarioExceptionItems: array, required
- managementAttentionItems: array, required
- decisionSupportItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- managementForecastTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- forecastStateCode
- effectiveAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
