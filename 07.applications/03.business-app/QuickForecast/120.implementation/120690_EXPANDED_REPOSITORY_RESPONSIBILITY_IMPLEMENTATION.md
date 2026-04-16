# ============================================================
# EXPANDED REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository responsibility after feature expansion.

repository_rules:
- repositories mediate data access and composed business retrieval
- repositories do not own UI display logic
- repositories do not replace reducers
- governed operations remain explicitly separated from local draft operations

expanded_repositories:

ForecastRepository:
- forecast draft load/save
- market event input persistence
- assumption persistence

ActionRepository:
- action candidate retrieval
- selected action persistence

ProposalRepository:
- proposal variant generation request
- proposal basis panel data retrieval
- proposal template selection persistence
- content recommendation retrieval
- internal explanation draft persistence

ProfitRepository:
- profit preview retrieval
- explainable profit basis retrieval

TrackingRepository:
- internal response tracking retrieval
- tracking state update
- readiness summary retrieval

GovernedOperationRepository:
- approval request execution
- share execution
- ERP handoff preparation
- governed submission execution
