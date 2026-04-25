# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO CONTROL TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: ProductPortfolioManager
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-control-timeline-model

purpose:
Defines the logical model for a unified portfolio control timeline.

core_entity:
- portfolio_control_timeline_item

recommended_fields:
- portfolioControlTimelineItemId
- portfolioId
- relatedScenarioId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- portfolioStateCode
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
- portfolio cockpit assembly
- prioritization exception review
- approval review
- decision-support readiness visibility
- management trend visibility
