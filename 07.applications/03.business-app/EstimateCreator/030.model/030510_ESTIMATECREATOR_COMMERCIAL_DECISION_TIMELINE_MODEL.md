# ============================================================
# ESTIMATECREATOR COMMERCIAL DECISION TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: EstimateCreator
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: commercial-decision-timeline-model

purpose:
Defines the logical model for a unified commercial decision timeline.

core_entity:
- estimate_commercial_timeline_item

recommended_fields:
- estimateCommercialTimelineItemId
- estimateId
- relatedRevisionId
- relatedApprovalId
- relatedConversionBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- commercialStateCode
- priorityCode
- validUntilAt
- reviewedAt
- approvedAt
- rejectedAt
- convertedAt
- exceptionPresent
- ownerUserId
- approvalRequired
- sourceModuleCode
- createdAt
- updatedAt

state_meaning:
- draft
- pending_review
- pending_approval
- approved
- rejected
- ready_for_conversion
- blocked_for_conversion
- converted
- expired

model_use_cases:
- estimate cockpit assembly
- revision review
- approval review
- conversion readiness visibility
- commercial trend visibility
