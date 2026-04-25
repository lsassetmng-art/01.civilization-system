# ============================================================
# INVOICEFLOW BILLING EXECUTION TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-execution-timeline-model

purpose:
Defines the logical model for a unified billing execution timeline.

core_entity:
- billing_execution_timeline_item

recommended_fields:
- billingExecutionTimelineItemId
- invoiceId
- relatedApprovalId
- relatedSettlementBlockerId
- relatedFinanceBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- priorityCode
- dueAt
- approvedAt
- issuedAt
- settledAt
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
- issued
- overdue
- blocked_for_settlement
- partially_settled
- settled
- handed_off
- cancelled

model_use_cases:
- billing cockpit assembly
- settlement exception review
- approval review
- downstream finance readiness visibility
- billing trend visibility
