# ============================================================
# DAO METHOD IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines DAO responsibilities and recommended method families.

dao_set:
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

recommended_methods:

common_read_methods:
- getById
- getByForecastId
- listRecent
- listByUpdatedAtDesc

common_write_methods:
- insert
- update
- upsert
- deleteById
- deleteByForecastId

screen_support_methods:
- getLatestSelectedScenario
- getLatestProposalByForecastId
- getLatestProfitPreviewByForecastId
- listHistoryByTarget
- listPendingSync
- listPendingApproval
- listPendingHandoff

principles:
- DAO methods should remain persistence-focused
- screen aggregation logic should not live in DAO unless clearly justified
- destructive delete should be limited and explicit
