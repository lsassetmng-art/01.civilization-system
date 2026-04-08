# ============================================================
# ANDROID MINIMUM FILE SET IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum file set required for first runnable implementation.

minimum_runnable_set:
- QuickForecastDatabase
- ForecastDraftEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ForecastDraftDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ForecastRepositoryImpl
- ScenarioRepositoryImpl
- ActionRepositoryImpl
- ProposalRepositoryImpl
- ProfitRepositoryImpl
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- Dashboard screen
- ForecastList screen
- ForecastEditor screen
- ActionBoard screen
- ProposalBuilder screen
- ProfitPreview screen

goal:
Enable the Forecast -> Action -> Proposal -> Profit local-first chain
before Pro governed extensions.
