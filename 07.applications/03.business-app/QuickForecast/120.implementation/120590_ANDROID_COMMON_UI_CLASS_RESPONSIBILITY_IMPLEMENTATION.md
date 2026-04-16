# ============================================================
# ANDROID COMMON UI CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reusable common UI class responsibilities.

common.ui:
- StateBadgeView
- ValidationMessageView
- LoadingStateView
- EmptyStateView
- ErrorStateView
- DraftStatusView
- SummaryCardView
- TimelineListView
- ShareTargetSelectorView
- ApprovalSummaryView
- HandoffSummaryView

common.form:
- ForecastHeaderFormBinder
- SignalInputBinder
- ProposalSectionBinder
- ProfitAssumptionBinder

principles:
- common components reduce repeated screen logic
- app-specific business sequence stays outside generic common views
