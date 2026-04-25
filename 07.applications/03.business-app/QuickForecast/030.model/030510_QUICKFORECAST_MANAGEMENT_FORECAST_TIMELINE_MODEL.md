# ============================================================
# QUICKFORECAST MANAGEMENT FORECAST TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: QuickForecast
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: management-forecast-timeline-model

purpose:
Defines the logical model for a unified management forecast timeline.

core_entity:
- management_forecast_timeline_item

recommended_fields:
- managementForecastTimelineItemId
- forecastId
- relatedScenarioId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- forecastStateCode
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
- forecast cockpit assembly
- scenario exception review
- approval review
- decision-support readiness visibility
- management trend visibility
