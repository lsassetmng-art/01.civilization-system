# ============================================================
# ANDROID REPOSITORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository-layer implementation direction.

repository_goals:
- isolate local storage from UI
- isolate integration gateways from UI
- preserve domain-shaped data access
- support Basic-only and Pro-linked operation cleanly

recommended_repositories:
- ForecastRepository
- ScenarioRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- HistoryRepository
- ShareRepository
- ApprovalRepository
- HandoffRepository
- SettingsRepository

split_principle:
Each repository may internally use:
- local data source
- remote/integration data source
- mapper layer

rules:
- local draft repositories must function without Pro linkage
- Pro linkage repositories must not own local draft truth
- ERP reference reads must remain distinct from user-edited draft values
