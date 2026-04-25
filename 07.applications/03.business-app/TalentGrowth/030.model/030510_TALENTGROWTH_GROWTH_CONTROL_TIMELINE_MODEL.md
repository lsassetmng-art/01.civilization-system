# ============================================================
# TALENTGROWTH GROWTH CONTROL TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: TalentGrowth
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: growth-control-timeline-model

purpose:
Defines the logical model for a unified growth control timeline.

core_entity:
- growth_control_timeline_item

recommended_fields:
- growthControlTimelineItemId
- growthPlanId
- relatedPathId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- growthStateCode
- priorityCode
- effectiveAt
- publishedAt
- supersededAt
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
- published
- stale
- blocked_for_decision_support
- superseded
- archived

model_use_cases:
- growth cockpit assembly
- readiness exception review
- approval review
- decision-support readiness visibility
- management trend visibility
