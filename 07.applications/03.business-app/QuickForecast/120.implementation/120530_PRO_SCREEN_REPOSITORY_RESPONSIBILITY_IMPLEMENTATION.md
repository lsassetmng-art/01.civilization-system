# ============================================================
# PRO SCREEN REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository call responsibility by Pro and auxiliary screen event.

forecast_detail:
- Initialize -> ForecastRepository.loadDraft
- Initialize -> ScenarioRepository.listScenarios
- Initialize -> ActionRepository.listActionIdeas
- Initialize -> ProposalRepository.listProposalDraftsByForecast or loadProposalDraft
- Initialize -> ProfitRepository.loadProfitPreview
- Initialize -> HistoryRepository.listHistory
- Initialize(Pro) -> ApprovalRepository.loadApprovalState, HandoffRepository.loadHandoffState

pro_approval_submission:
- Initialize -> ApprovalRepository.loadApprovalState
- Initialize -> HandoffRepository.loadHandoffState
- RequestApproval -> ApprovalRepository.requestApproval
- CancelApprovalRequest -> ApprovalRepository.cancelApproval
- PrepareHandoff -> HandoffRepository.prepareHandoff
- ExecuteHandoff -> HandoffRepository.executeHandoff
- RetryHandoff -> HandoffRepository.retryHandoff
- Refresh -> ApprovalRepository.refreshApprovalState, HandoffRepository.refreshHandoffState

history:
- Initialize / Refresh -> HistoryRepository.listHistory

share_target:
- Initialize -> ShareRepository.listShareTargets
- ConfirmShare -> ShareRepository.addShareTarget
- RevokeShare -> ShareRepository.removeShareTarget

settings:
- Initialize -> SettingsRepository.loadSettings, SettingsRepository.loadTierInfo
- SavePreferences -> SettingsRepository.saveSettings
- RefreshProConnectionState -> SettingsRepository.loadTierInfo or Pro connection source

principles:
- governed approval and governed handoff remain explicit repository owners
- detail screen aggregates but does not own domain truth
