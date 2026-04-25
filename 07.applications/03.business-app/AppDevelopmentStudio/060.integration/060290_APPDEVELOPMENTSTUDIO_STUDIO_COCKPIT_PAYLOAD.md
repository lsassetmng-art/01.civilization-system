# ============================================================
# APPDEVELOPMENTSTUDIO STUDIO_COCKPIT_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: AppDevelopmentStudio
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: studio-cockpit-payload

purpose:
Fixes the exact payload family for the studio cockpit surface.

endpoint:
- POST /api/v1/app-development-studio/studio-cockpit/query

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
- developmentControlTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- developmentStateCode
- dueAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
