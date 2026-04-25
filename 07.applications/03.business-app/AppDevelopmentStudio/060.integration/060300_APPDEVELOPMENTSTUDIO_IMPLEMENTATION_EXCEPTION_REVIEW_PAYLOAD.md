# ============================================================
# APPDEVELOPMENTSTUDIO IMPLEMENTATION_EXCEPTION_REVIEW_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: AppDevelopmentStudio
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: implementation-exception-review-payload

purpose:
Fixes the exact payload family for implementation and release exception review.

endpoint:
- POST /api/v1/app-development-studio/implementation-exception-review/query

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
- reviewItemId
- relatedReviewId
- relatedExceptionId
- relatedReleaseBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- developmentStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- dueAt
