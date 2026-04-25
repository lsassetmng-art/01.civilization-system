# ============================================================
# ORDERFLOW ORDER EXECUTION TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: OrderFlow
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-execution-timeline-model

purpose:
Defines the logical model for a unified order execution timeline.

core_entity:
- order_execution_timeline_item

recommended_fields:
- orderExecutionTimelineItemId
- orderId
- relatedApprovalId
- relatedFulfillmentBlockerId
- relatedHandoffBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- priorityCode
- requiredByAt
- approvedAt
- releasedAt
- fulfilledAt
- handedOffAt
- exceptionPresent
- ownerUserId
- approvalRequired
- sourceModuleCode
- createdAt
- updatedAt

state_meaning:
- draft
- pending_approval
- approved
- on_hold
- ready_for_fulfillment
- blocked_for_fulfillment
- fulfilled
- handed_off
- cancelled

model_use_cases:
- order cockpit assembly
- fulfillment exception review
- approval review
- downstream handoff readiness visibility
- operational trend visibility
