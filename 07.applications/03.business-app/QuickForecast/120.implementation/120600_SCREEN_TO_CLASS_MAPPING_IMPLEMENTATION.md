# ============================================================
# SCREEN TO CLASS MAPPING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines intended mapping from screens to concrete Android class groups.

mapping:

dashboard:
- screen: DashboardActivity/Fragment
- viewmodel: DashboardViewModel
- repositories: ForecastRepository, ApprovalRepository, HandoffRepository

forecast_list:
- screen: ForecastListActivity/Fragment
- viewmodel: ForecastListViewModel
- repositories: ForecastRepository, ShareRepository, ApprovalRepository, HandoffRepository

forecast_detail:
- screen: ForecastDetailActivity/Fragment
- viewmodel: ForecastDetailViewModel
- repositories: ForecastRepository, ScenarioRepository, ActionRepository, ProposalRepository, ProfitRepository, HistoryRepository, ApprovalRepository, HandoffRepository

forecast_editor:
- screen: ForecastEditorActivity/Fragment
- viewmodel: ForecastEditorViewModel
- repositories: ForecastRepository, ScenarioRepository

action_board:
- screen: ActionBoardActivity/Fragment
- viewmodel: ActionBoardViewModel
- repositories: ActionRepository, ScenarioRepository

proposal_builder:
- screen: ProposalBuilderActivity/Fragment
- viewmodel: ProposalBuilderViewModel
- repositories: ProposalRepository, ActionRepository, ProfitRepository

profit_preview:
- screen: ProfitPreviewActivity/Fragment
- viewmodel: ProfitPreviewViewModel
- repositories: ProfitRepository

pro_approval_submission:
- screen: ProApprovalSubmissionActivity/Fragment
- viewmodel: ProApprovalSubmissionViewModel
- repositories: ApprovalRepository, HandoffRepository

history:
- screen: HistoryActivity/Fragment
- viewmodel: HistoryViewModel
- repositories: HistoryRepository

share_target:
- screen: ShareTargetActivity/Fragment
- viewmodel: ShareTargetViewModel
- repositories: ShareRepository

settings:
- screen: SettingsActivity/Fragment
- viewmodel: SettingsViewModel
- repositories: SettingsRepository
