# ============================================================
# EXPENSESETTLEMENT SETTLEMENT CONTROL TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: ExpenseSettlement
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: settlement-control-timeline-model

purpose:
Defines the logical model for a unified settlement control timeline.

core_entity:
- settlement_control_timeline_item

recommended_fields:
- settlementControlTimelineItemId
- expenseClaimId
- relatedApprovalId
- relatedExceptionId
- relatedErpHandoffBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- settlementStateCode
- priorityCode
- dueAt
- approvedAt
- paidAt
- handedOffAt
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
- pending_payment
- paid
- blocked_for_handoff
- handed_off
- rejected
- cancelled

model_use_cases:
- expense cockpit assembly
- expense exception review
- approval review
- ERP handoff readiness visibility
- settlement trend visibility
