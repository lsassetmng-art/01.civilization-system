# ============================================================
# ANDROID GENERATION TARGET FREEZE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Freezes the first-pass Android file generation target set.

package_root:
com.lsam.QuickForecast

# ============================================================
# 1. CORE LOCAL DATA TARGETS
# ============================================================

core_local_data_targets:
- data/local/database/QuickForecastDatabase.java
- data/local/entity/ForecastDraftEntity.java
- data/local/entity/ForecastScenarioEntity.java
- data/local/entity/ActionIdeaEntity.java
- data/local/entity/ProposalDraftEntity.java
- data/local/entity/ProfitPreviewEntity.java
- data/local/entity/ProfitAssumptionEntity.java
- data/local/dao/ForecastDraftDao.java
- data/local/dao/ForecastScenarioDao.java
- data/local/dao/ActionIdeaDao.java
- data/local/dao/ProposalDraftDao.java
- data/local/dao/ProfitPreviewDao.java
- data/local/dao/ProfitAssumptionDao.java

# ============================================================
# 2. CORE REPOSITORY TARGETS
# ============================================================

core_repository_targets:
- domain/repository/ForecastRepository.java
- domain/repository/ScenarioRepository.java
- domain/repository/ActionRepository.java
- domain/repository/ProposalRepository.java
- domain/repository/ProfitRepository.java
- data/repository/ForecastRepositoryImpl.java
- data/repository/ScenarioRepositoryImpl.java
- data/repository/ActionRepositoryImpl.java
- data/repository/ProposalRepositoryImpl.java
- data/repository/ProfitRepositoryImpl.java

# ============================================================
# 3. CORE VIEWMODEL TARGETS
# ============================================================

core_viewmodel_targets:
- feature/forecast/DashboardViewModel.java
- feature/forecast/ForecastListViewModel.java
- feature/forecast/ForecastEditorViewModel.java
- feature/action/ActionBoardViewModel.java
- feature/proposal/ProposalBuilderViewModel.java
- feature/profit/ProfitPreviewViewModel.java

# ============================================================
# 4. CORE SCREEN TARGETS
# ============================================================

core_screen_targets:
- feature/forecast/DashboardActivity.java
- feature/forecast/ForecastListActivity.java
- feature/forecast/ForecastEditorActivity.java
- feature/action/ActionBoardActivity.java
- feature/proposal/ProposalBuilderActivity.java
- feature/profit/ProfitPreviewActivity.java

# ============================================================
# 5. COMMON UI TARGETS
# ============================================================

common_ui_targets:
- common/ui/StateBadgeView.java
- common/ui/ValidationMessageView.java
- common/ui/LoadingStateView.java
- common/ui/EmptyStateView.java
- common/ui/ErrorStateView.java
- common/ui/SummaryCardView.java

# ============================================================
# 6. PRO SUPPORT TARGETS
# ============================================================

pro_support_targets:
- data/local/entity/SyncStateEntity.java
- data/local/entity/ApprovalRequestCacheEntity.java
- data/local/entity/ApprovalEventCacheEntity.java
- data/local/entity/ShareTargetCacheEntity.java
- data/local/entity/ErpHandoffCacheEntity.java
- data/local/entity/HistoryEntryEntity.java
- data/local/entity/SettingsEntity.java
- data/local/dao/SyncStateDao.java
- data/local/dao/ApprovalRequestCacheDao.java
- data/local/dao/ApprovalEventCacheDao.java
- data/local/dao/ShareTargetCacheDao.java
- data/local/dao/ErpHandoffCacheDao.java
- data/local/dao/HistoryEntryDao.java
- data/local/dao/SettingsDao.java

# ============================================================
# 7. PRO REPOSITORY TARGETS
# ============================================================

pro_repository_targets:
- domain/repository/HistoryRepository.java
- domain/repository/ShareRepository.java
- domain/repository/ApprovalRepository.java
- domain/repository/HandoffRepository.java
- domain/repository/SettingsRepository.java
- data/repository/HistoryRepositoryImpl.java
- data/repository/ShareRepositoryImpl.java
- data/repository/ApprovalRepositoryImpl.java
- data/repository/HandoffRepositoryImpl.java
- data/repository/SettingsRepositoryImpl.java

# ============================================================
# 8. PRO VIEWMODEL TARGETS
# ============================================================

pro_viewmodel_targets:
- feature/forecast/ForecastDetailViewModel.java
- feature/pro/HistoryViewModel.java
- feature/pro/ProApprovalSubmissionViewModel.java
- feature/pro/ShareTargetViewModel.java
- feature/pro/SettingsViewModel.java

# ============================================================
# 9. PRO SCREEN TARGETS
# ============================================================

pro_screen_targets:
- feature/forecast/ForecastDetailActivity.java
- feature/pro/HistoryActivity.java
- feature/pro/ProApprovalSubmissionActivity.java
- feature/pro/ShareTargetActivity.java
- feature/pro/SettingsActivity.java

# ============================================================
# 10. INTEGRATION TARGETS
# ============================================================

integration_targets:
- integration/gateway/GeneralSignalGateway.java
- integration/gateway/ErpReferenceGateway.java
- integration/gateway/ApprovalGateway.java
- integration/gateway/HandoffGateway.java
- integration/gateway/ShareGateway.java
- integration/gateway/SyncGateway.java
