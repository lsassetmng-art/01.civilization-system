# ============================================================
# ANDROID FILE GENERATION UNIT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines file-generation units for Android implementation.

generation_units:

unit_01_core_local_data:
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

unit_02_core_repositories:
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

unit_03_core_viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel

unit_04_core_screens:
- DashboardActivity or Fragment
- ForecastListActivity or Fragment
- ForecastEditorActivity or Fragment
- ActionBoardActivity or Fragment
- ProposalBuilderActivity or Fragment
- ProfitPreviewActivity or Fragment

unit_05_core_common_ui:
- StateBadgeView
- ValidationMessageView
- LoadingStateView
- EmptyStateView
- ErrorStateView
- SummaryCardView

unit_06_pro_support_data:
- SyncStateEntity
- ApprovalRequestCacheEntity
- ApprovalEventCacheEntity
- ShareTargetCacheEntity
- ErpHandoffCacheEntity
- HistoryEntryEntity
- SettingsEntity
- related DAO classes

unit_07_pro_repositories:
- HistoryRepository
- ShareRepository
- ApprovalRepository
- HandoffRepository
- SettingsRepository
- HistoryRepositoryImpl
- ShareRepositoryImpl
- ApprovalRepositoryImpl
- HandoffRepositoryImpl
- SettingsRepositoryImpl

unit_08_pro_viewmodels:
- ForecastDetailViewModel
- HistoryViewModel
- ProApprovalSubmissionViewModel
- ShareTargetViewModel
- SettingsViewModel

unit_09_pro_screens:
- ForecastDetailActivity or Fragment
- HistoryActivity or Fragment
- ProApprovalSubmissionActivity or Fragment
- ShareTargetActivity or Fragment
- SettingsActivity or Fragment

unit_10_integration_gateways:
- GeneralSignalGateway
- ErpReferenceGateway
- ApprovalGateway
- HandoffGateway
- ShareGateway
- SyncGateway
