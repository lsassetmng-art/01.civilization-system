# ============================================================
# ANDROID DATA CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines data-layer class responsibilities.

data.local.entity:
- ForecastDraftEntity
- ForecastSignalEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ProfitAssumptionEntity
- SyncStateEntity
- ApprovalRequestCacheEntity
- ApprovalEventCacheEntity
- ShareTargetCacheEntity
- ErpHandoffCacheEntity
- HistoryEntryEntity
- SettingsEntity

data.local.dao:
- ForecastDraftDao
- ForecastSignalDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ProfitAssumptionDao
- SyncStateDao
- ApprovalRequestCacheDao
- ApprovalEventCacheDao
- ShareTargetCacheDao
- ErpHandoffCacheDao
- HistoryEntryDao
- SettingsDao

data.local.database:
- QuickForecastDatabase

data.repository:
- ForecastRepositoryImpl
- ScenarioRepositoryImpl
- ActionRepositoryImpl
- ProposalRepositoryImpl
- ProfitRepositoryImpl
- HistoryRepositoryImpl
- ShareRepositoryImpl
- ApprovalRepositoryImpl
- HandoffRepositoryImpl
- SettingsRepositoryImpl

principles:
- entity/dao stay persistence-focused
- repository implementations coordinate DAOs and integration gateways
