# ============================================================
# ANDROID PHASE 1 GENERATION TARGET IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what must be generated in the very first implementation pass.

phase_1_targets:
- QuickForecastDatabase
- ForecastDraftEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ProfitAssumptionEntity
- ForecastDraftDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ProfitAssumptionDao
- ForecastRepository
- ScenarioRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
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
- DashboardActivity
- ForecastListActivity
- ForecastEditorActivity
- ActionBoardActivity
- ProposalBuilderActivity
- ProfitPreviewActivity

reason:
This is the smallest coherent set for the
Forecast -> Action -> Proposal -> Profit local-first chain.
