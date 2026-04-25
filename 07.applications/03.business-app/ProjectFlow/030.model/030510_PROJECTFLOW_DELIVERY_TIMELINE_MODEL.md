# ============================================================
# PROJECTFLOW DELIVERY TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: ProjectFlow
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: delivery-timeline-model

purpose:
Defines the logical model for a unified delivery-oriented timeline.

core_entity:
- project_delivery_timeline_item

recommended_fields:
- projectDeliveryTimelineItemId
- projectId
- relatedTaskId
- relatedMilestoneId
- relatedDependencyId
- itemTypeCode
- itemTitle
- itemSummary
- deliveryStateCode
- priorityCode
- dueAt
- scheduledStartAt
- scheduledEndAt
- riskLevelCode
- blockerPresent
- ownerUserId
- escalationRequired
- sourceModuleCode
- createdAt
- updatedAt
- completedAt

state_meaning:
- planned
- in_progress
- blocked
- at_risk
- awaiting_decision
- completed
- cancelled

model_use_cases:
- project cockpit assembly
- milestone review
- dependency exposure
- risk review
- delivery trend visibility
