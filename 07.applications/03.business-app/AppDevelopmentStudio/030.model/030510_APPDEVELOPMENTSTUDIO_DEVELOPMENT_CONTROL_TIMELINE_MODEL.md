# ============================================================
# APPDEVELOPMENTSTUDIO DEVELOPMENT CONTROL TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: AppDevelopmentStudio
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: development-control-timeline-model

purpose:
Defines the logical model for a unified development control timeline.

core_entity:
- development_control_timeline_item

recommended_fields:
- developmentControlTimelineItemId
- studioWorkId
- relatedReviewId
- relatedExceptionId
- relatedReleaseBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- developmentStateCode
- priorityCode
- dueAt
- approvedAt
- buildReadyAt
- releasedAt
- exceptionPresent
- ownerUserId
- approvalRequired
- sourceModuleCode
- createdAt
- updatedAt

state_meaning:
- draft
- pending_review
- approved
- ready_for_build
- blocked
- released
- archived

model_use_cases:
- studio cockpit assembly
- implementation exception review
- approval review
- release readiness visibility
- development trend visibility
